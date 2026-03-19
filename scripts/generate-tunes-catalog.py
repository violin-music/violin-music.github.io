#!/usr/bin/env python3
"""
Generate tunes-catalog.json from metadata.json files and SVG/MIDI assets.

Architecture:
- Private repo (violin-music_private): Source .ly files with metadata.json per tune folder
- Public repo (violin-music.github.io): Flat SVG/MIDI files at genre root

This script:
1. Reads metadata.json from PRIVATE repo tune folders
2. Matches SVG/MIDI files in PUBLIC repo's flat structure
3. Outputs tunes-catalog.json in the public repo

Output: tunes-catalog.json with all tune data for the index page.
"""

import os
import re
import json
from pathlib import Path
from urllib.parse import quote

# Configuration
SCRIPT_DIR = Path(__file__).parent
PUBLIC_REPO_ROOT = SCRIPT_DIR.parent
PUBLIC_TUNES_DIR = PUBLIC_REPO_ROOT / "tunes"
PRIVATE_REPO_ROOT = Path.home() / "Projects" / "violin-music_private"
PRIVATE_TUNES_DIR = PRIVATE_REPO_ROOT / "tunes"
OUTPUT_FILE = PUBLIC_REPO_ROOT / "tunes-catalog.json"

# Directories to exclude
EXCLUDE_DIRS = {'.git', 'common', 'stylesheets', 'node_modules', '__pycache__', 'Scales', 'scripts', 'docs', 'WIP'}

# Map genre folder names to display categories
GENRE_TO_CATEGORY = {
    'Folk_Ireland': 'Celtic/Irish',
    'Folk_Scotland': 'Celtic/Scottish',
    'Folk_France': 'Folk/French',
    'Folk_French': 'Folk/French',
    'Folk_Canada': 'Folk/Canada',
    'Folk_USA': 'Folk/USA',
    'Folk_Hungary': 'Folk/Hungarian',
    'Folk_Jewish': 'Folk/Jewish',
    'Folk_Finland': 'Folk/Finnish',
    'Folk_Russia': 'Folk/Russian',
    'Folk_England': 'Folk/English',
    'Folk_Germany': 'Folk/German',
    'Folk_Italy': 'Folk/Italian',
    'Folk_Romania': 'Folk/Romanian',
    'Folk_NewZealand': 'Folk/New Zealand',
    'Folk_CapeVerde': 'Folk/Cape Verde',
    'Classical': 'Classical',
    'Jazz': 'Jazz',
    'Gypsy-Jazz': 'Gypsy Jazz',
    'Pop': 'Pop',
    'Soundtrack': 'Soundtrack',
    'Christmas': 'Christmas',
    'Blues': 'Blues',
    'Latina': 'Latina',
    'Games': 'Games',
    'Wedding': 'Wedding',
    'Études': 'Études',
    'Marc-Mouries': 'Original',
}

# Country flags
COUNTRY_FLAGS = {
    'Argentina': '🇦🇷', 'Austria': '🇦🇹', 'Belgium': '🇧🇪', 'Brazil': '🇧🇷',
    'Canada': '🇨🇦', 'Cape Verde': '🇨🇻', 'China': '🇨🇳', 'Cuba': '🇨🇺',
    'Czech Republic': '🇨🇿', 'England': '🏴󠁧󠁢󠁥󠁮󠁧󠁿', 'Finland': '🇫🇮',
    'France': '🇫🇷', 'Germany': '🇩🇪', 'Hungary': '🇭🇺', 'Ireland': '🇮🇪',
    'Israel': '🇮🇱', 'Italy': '🇮🇹', 'Japan': '🇯🇵', 'Jewish': '✡️',
    'Mexico': '🇲🇽', 'New Zealand': '🇳🇿', 'Norway': '🇳🇴', 'Poland': '🇵🇱',
    'Romania': '🇷🇴', 'Russia': '🇷🇺', 'Scotland': '🏴󠁧󠁢󠁳󠁣󠁴󠁿', 'Spain': '🇪🇸',
    'Ukraine': '🇺🇦', 'USA': '🇺🇸', 'Wales': '🏴󠁧󠁢󠁷󠁬󠁳󠁿',
}


def find_variants(tune_folder):
    """Find all .ly file variants in a tune folder."""
    variants = []

    for ly_file in tune_folder.glob('*.ly'):
        stem = ly_file.stem

        variant_info = {
            'filename': ly_file.name,
            'stem': stem,
        }

        # Check for key suffix like _(G) or _(Am)
        key_match = re.search(r'_\(([A-Ga-g][#b]?m?)\)$', stem)
        if key_match:
            variant_info['key_variant'] = key_match.group(1)

        # Check for arrangement type like _[Easy]
        arr_match = re.search(r'_\[([^\]]+)\]', stem)
        if arr_match:
            variant_info['arrangement'] = arr_match.group(1)

        variants.append(variant_info)

    return variants


def find_assets_flat(genre_folder_public, tune_folder_name, variants):
    """Find SVG and MIDI files in the public repo's flat structure.

    In flat structure, files are named like:
      TuneName_page_1.svg, TuneName.midi
    at the genre root (no tune subfolder).

    Uses case-insensitive matching to handle inconsistencies.
    """
    assets = {
        'svg_files': [],
        'midi_files': [],
    }

    if not genre_folder_public.exists():
        return assets

    # Build list of stems to search for (from variants) - lowercase for comparison
    stems_to_find = set()
    for v in variants:
        stems_to_find.add(v['stem'].lower())

    # Also try the folder name itself (normalized)
    stems_to_find.add(tune_folder_name.lower())

    # Search for SVG files (case-insensitive)
    for svg_file in genre_folder_public.glob('*.svg'):
        svg_lower = svg_file.name.lower()
        for stem in stems_to_find:
            # Match patterns like: stem_page_1.svg or stem.svg
            if svg_lower.startswith(stem + '_page_') or svg_lower == stem + '.svg':
                if svg_file.name not in assets['svg_files']:
                    assets['svg_files'].append(svg_file.name)
                break

    # Search for MIDI files (case-insensitive)
    for midi_file in list(genre_folder_public.glob('*.midi')) + list(genre_folder_public.glob('*.mid')):
        midi_lower = midi_file.name.lower()
        for stem in stems_to_find:
            # Match patterns like: stem.midi or stem-1.midi
            if midi_lower.startswith(stem + '.') or midi_lower.startswith(stem + '-'):
                if midi_file.name not in assets['midi_files']:
                    assets['midi_files'].append(midi_file.name)
                break

    return assets


def process_tune_folder(tune_folder_private, genre_name):
    """Process a single tune folder from private repo."""

    metadata_file = tune_folder_private / 'metadata.json'

    if not metadata_file.exists():
        return None

    try:
        with open(metadata_file, 'r', encoding='utf-8') as f:
            metadata = json.load(f)
    except Exception as e:
        print(f"  Warning: Could not read {metadata_file}: {e}")
        return None

    # Skip placeholder tunes (no .ly file yet)
    if metadata.get('status') == 'placeholder':
        return None

    # Check if there's at least one .ly file
    ly_files = list(tune_folder_private.glob('*.ly'))
    if not ly_files:
        return None

    if not metadata.get('title'):
        metadata['title'] = tune_folder_private.name.replace('-', ' ').replace('_', ' ')

    # Get category
    category = GENRE_TO_CATEGORY.get(genre_name, genre_name.replace('_', '/'))

    # Find variants from private repo
    variants = find_variants(tune_folder_private)

    # Find assets in public repo (flat structure)
    genre_folder_public = PUBLIC_TUNES_DIR / genre_name
    assets = find_assets_flat(genre_folder_public, tune_folder_private.name, variants)

    # Build relative path for assets (in public repo's flat structure)
    rel_path = Path("tunes") / genre_name

    # Build tune entry
    tune_entry = {
        'title': metadata.get('title', 'Unknown'),
        'composer': metadata.get('composer', 'Unknown'),
        'country': metadata.get('country', ''),
        'country_flag': COUNTRY_FLAGS.get(metadata.get('country', ''), '🌍'),
        'genre': metadata.get('genre', ''),
        'subgenre': metadata.get('subgenre', ''),
        'category': category,
        'period': metadata.get('period', ''),
        'type': metadata.get('type', ''),
        'key': metadata.get('key', ''),
        'time_sig': metadata.get('time_sig', ''),
        'difficulty': metadata.get('difficulty', ''),
        'tags': metadata.get('tags', []),
        'moods': metadata.get('moods', []),
        'session_friendliness': metadata.get('session_friendliness', ''),
        'notes': metadata.get('notes', ''),
        'genre_folder': genre_name,
        'tune_folder': tune_folder_private.name,
        'variants': variants,
        'svg_files': assets['svg_files'],
        'midi_files': assets['midi_files'],
    }

    # Add primary SVG and MIDI paths (first available)
    if assets['svg_files']:
        tune_entry['svg'] = quote(str(rel_path / assets['svg_files'][0]))
    if assets['midi_files']:
        tune_entry['midi'] = quote(str(rel_path / assets['midi_files'][0]))

    return tune_entry


def scan_tunes():
    """Scan all tune folders from private repo and match with public assets."""
    tunes = []

    print(f"Scanning private repo: {PRIVATE_TUNES_DIR}")
    print(f"Looking for assets in: {PUBLIC_TUNES_DIR}")

    if not PRIVATE_TUNES_DIR.exists():
        print(f"ERROR: Private tunes directory not found: {PRIVATE_TUNES_DIR}")
        return tunes

    for genre_folder in sorted(PRIVATE_TUNES_DIR.iterdir()):
        if not genre_folder.is_dir():
            continue
        if genre_folder.name in EXCLUDE_DIRS:
            continue

        genre_name = genre_folder.name
        print(f"  Processing {genre_name}...")

        for tune_folder in sorted(genre_folder.iterdir()):
            if not tune_folder.is_dir():
                continue
            if tune_folder.name in EXCLUDE_DIRS:
                continue

            tune_entry = process_tune_folder(tune_folder, genre_name)
            if tune_entry:
                tunes.append(tune_entry)
                has_svg = '✓' if tune_entry.get('svg') else '✗'
                has_midi = '✓' if tune_entry.get('midi') else '✗'
                print(f"    + {tune_entry['title']} [SVG:{has_svg} MIDI:{has_midi}]")

    return tunes


def main():
    print("=" * 60)
    print("Generating tunes-catalog.json")
    print("=" * 60)

    tunes = scan_tunes()

    # Sort alphabetically by title
    tunes.sort(key=lambda t: (t.get('title') or '').lower())

    # Count stats
    with_svg = sum(1 for t in tunes if t.get('svg'))
    with_midi = sum(1 for t in tunes if t.get('midi'))

    # Build catalog
    catalog = {
        'version': '1.0',
        'generated': True,
        'tune_count': len(tunes),
        'tunes': tunes,
    }

    # Write output
    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        json.dump(catalog, f, indent=2, ensure_ascii=False)

    print("=" * 60)
    print(f"Generated {OUTPUT_FILE}")
    print(f"Total tunes: {len(tunes)}")
    print(f"With SVG: {with_svg}")
    print(f"With MIDI: {with_midi}")
    print("=" * 60)


if __name__ == '__main__':
    main()
