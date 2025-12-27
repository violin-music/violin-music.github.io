#!/usr/bin/env python3
"""
Sync CSV key signatures from LilyPond source files.

What it does:
- Scans .ly files for \\key statements (e.g., \\key g \\minor).
- Uses the LilyPond key as the canonical key for the tune.
- Updates the "Key Signature (common)" column in tune_catalog_rich_schema.csv.

Notes:
- By default, only missing/placeholder keys are filled (use --force to overwrite).
- Prefers base (non-suffixed) files when multiple keys exist for the same title.
"""
import argparse
import csv
import re
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
TUNES_DIR = REPO_ROOT / "tunes"
CSV_FILE = REPO_ROOT / "tune_catalog_rich_schema.csv"

EXCLUDE_DIRS = {
    ".git",
    "stylesheets",
    "common",
    "lilypong_how-to",
    "Lilypond_How-to",
    "node_modules",
    "__pycache__",
    "Scales",
    "scripts",
    "docs",
}

EXCLUDE_FILENAMES = {
    "book.ly",
    "book-1.ly",
    "book-2.ly",
    "guitar1.ly",
    "guitar2.ly",
    "guitar3.ly",
    "guitar4.ly",
    "dynamicsa.ly",
    "dynamicsb.ly",
    "dynamicsc.ly",
    "blank.ly",
    "blank1.ly",
    "copyright.ly",
    "spacing.ly",
    "gymnopedie-2.ly",
    "gymnopedie-3.ly",
    "make-score-preview-lilypond-example.ly",
    "music.ily",
}

KEY_PLACEHOLDERS = {"", "N/A", "Various", "Varies"}


def extract_key_from_filename(filename):
    match = re.match(r"^(.+?)_\(([A-G][#b]?m?)\)(?:\.ly)?$", filename)
    if match:
        return (match.group(1), match.group(2))
    return (filename.replace(".ly", ""), None)


def normalize_key_for_csv(key_str):
    key_str = (key_str or "").strip()
    if not key_str:
        return ""
    key_str = key_str.replace("\u266d", "b").replace("\u266f", "#")
    if "/" in key_str:
        return key_str
    match_minor = re.match(r"^([A-G])([#b]?)(m)$", key_str)
    if match_minor:
        return f"{match_minor.group(1)}{match_minor.group(2)} minor"
    match_major = re.match(r"^([A-G])([#b]?)$", key_str)
    if match_major:
        return f"{match_major.group(1)}{match_major.group(2)} major"
    return key_str


def lilypond_key_to_common(note, mode):
    note = note.lower()
    if note.endswith("f") and len(note) > 1:
        base = note[:-1]
        suffix = "b"
    elif note.endswith("s") and len(note) > 1:
        base = note[:-1]
        suffix = "#"
    else:
        base = note
        suffix = ""
    note_name = base.upper() + suffix
    return f"{note_name} {mode}"


def parse_title_and_key(ly_file):
    try:
        content = ly_file.read_text(encoding="utf-8", errors="ignore")
    except Exception:
        return "", ""

    header_match = re.search(r"\\header\s*\{([^}]*)\}", content, re.DOTALL)
    if not header_match:
        return "", ""

    header = header_match.group(1)
    title_match = re.search(r'title\s*=\s*"((?:[^"\\]|\\.)*)"', header)
    if not title_match:
        return "", ""
    title = title_match.group(1).replace('\\"', '"').strip()

    key_match = re.search(
        r"\\key\s+([a-g][sf]*)\s+\\(major|minor|dorian|mixolydian|lydian|phrygian|locrian|aeolian)",
        content,
    )
    if key_match:
        key_value = lilypond_key_to_common(key_match.group(1), key_match.group(2))
    else:
        key_value = ""

    if not key_value:
        header_key_match = re.search(r'key\s*=\s*"([^"]+)"', header)
        if header_key_match:
            key_value = normalize_key_for_csv(header_key_match.group(1))

    return title, key_value


def should_skip_file(ly_file):
    if any(excluded in ly_file.parts for excluded in EXCLUDE_DIRS):
        return True
    if ly_file.name in EXCLUDE_FILENAMES:
        return True
    if ly_file.name.endswith("_music.ily"):
        return True
    try:
        if "preview wrapper" in ly_file.read_text(encoding="utf-8", errors="ignore")[:500].lower():
            return True
    except Exception:
        return False
    return False


def collect_keys():
    key_by_title = {}

    for ly_file in TUNES_DIR.rglob("*.ly"):
        if should_skip_file(ly_file):
            continue

        title, key_value = parse_title_and_key(ly_file)
        if not title or not key_value:
            continue

        base_name, file_key = extract_key_from_filename(ly_file.name)
        is_base_file = file_key is None

        existing = key_by_title.get(title)
        if not existing:
            key_by_title[title] = {
                "key": key_value,
                "file": str(ly_file.relative_to(REPO_ROOT)),
                "is_base": is_base_file,
            }
            continue

        if is_base_file and not existing["is_base"]:
            key_by_title[title] = {
                "key": key_value,
                "file": str(ly_file.relative_to(REPO_ROOT)),
                "is_base": is_base_file,
            }

    return key_by_title


def update_csv(force):
    if not CSV_FILE.exists():
        raise FileNotFoundError(f"CSV file not found: {CSV_FILE}")

    key_by_title = collect_keys()
    if not key_by_title:
        print("No keys found from LilyPond files.")
        return

    with CSV_FILE.open("r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        rows = list(reader)
        fieldnames = reader.fieldnames

    if not fieldnames:
        print("CSV appears to have no headers.")
        return

    updates = 0
    for row in rows:
        if None in row:
            row.pop(None, None)
        title = row.get("Title", "").strip()
        if not title or title not in key_by_title:
            continue
        new_key = key_by_title[title]["key"]
        current_key = row.get("Key Signature (common)", "").strip()
        if force or current_key in KEY_PLACEHOLDERS:
            if current_key != new_key:
                row["Key Signature (common)"] = new_key
                updates += 1

    with CSV_FILE.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(rows)

    print(f"Updated {updates} CSV rows with keys from LilyPond.")


def main():
    parser = argparse.ArgumentParser(description="Sync CSV key signatures from LilyPond files.")
    parser.add_argument(
        "--force",
        action="store_true",
        help="Overwrite existing keys (not just missing/placeholder keys).",
    )
    args = parser.parse_args()
    update_csv(force=args.force)


if __name__ == "__main__":
    main()
