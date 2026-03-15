#!/usr/bin/env python3
"""
Generate tunes-catalog.json from metadata.json files and .ly files.

This script scans the tunes/ directory for:
1. metadata.json files (rich metadata per tune folder)
2. .ly files (to discover variants/keys)
3. Generated assets (SVG, MIDI) to build file paths

Output: tunes-catalog.json with all tune data for the index page.
"""

import os
import re
import json
from pathlib import Path
from urllib.parse import quote

# Configuration
SCRIPT_DIR = Path(__file__).parent
REPO_ROOT = SCRIPT_DIR.parent
TUNES_DIR = REPO_ROOT / "tunes"
OUTPUT_FILE = REPO_ROOT / "tunes-catalog.json"

# Directories to exclude
EXCLUDE_DIRS = {'.git', 'common', 'stylesheets', 'node_modules', '__pycache__', 'Scales', 'scripts', 'docs'}

# Map genre folder names to display categories
GENRE_TO_CATEGORY = {
    'Folk_Ireland': 'Celtic/Irish',
    'Folk_Scotland': 'Celtic/Scottish',
    'Folk_France': 'Folk/French',
    'Folk_Canada': 'Folk/Canada',
    'Folk_USA': 'Folk/USA',
    'Folk_Hungary': 'Folk/Hungarian',
    'Folk_Jewish': 'Folk/Jewish',
    'Classical': 'Classical',
    'Jazz': 'Jazz',
    'Gypsy-Jazz': 'Gypsy Jazz',
    'Pop': 'Pop',
    'Soundtrack': 'Soundtrack',
    'Christmas': 'Christmas',
    'Blues': 'Blues',
}

# Country flags
COUNTRY_FLAGS = {
    'Austria': '🇦🇹', 'Brazil': '🇧🇷', 'Canada': '🇨🇦', 'China': '🇨🇳',
    'Cuba': '🇨🇺', 'Czech Republic': '🇨🇿', 'England': '🏴󠁧󠁢󠁥󠁮󠁧󠁿',
    'Finland': '🇫🇮', 'France': '🇫🇷', 'Germany': '🇩🇪', 'Hungary': '🇭🇺',
    'Ireland': '🇮🇪', 'Israel': '🇮🇱', 'Italy': '🇮🇹', 'Japan': '🇯🇵',
    'Jewish': '✡️', 'Mexico': '🇲🇽', 'New Zealand': '🇳🇿', 'Norway': '🇳🇴',
    'Poland': '🇵🇱', 'Romania': '🇷🇴', 'Russia': '🇷🇺', 'Scotland': '🏴󠁧󠁢󠁳󠁣󠁴󠁿',
    'Spain': '🇪🇸', 'Ukraine': '🇺🇦', 'USA': '🇺🇸', 'Wales': '🏴󠁧󠁢󠁷󠁬󠁳󠁿',
}


def get_category_from_path(folder_path):
    """Extract category from folder path like tunes/Folk_Ireland/..."""
    parts = folder_path.relative_to(TUNES_DIR).parts
    if parts:
        genre_folder = parts[0]
        return GENRE_TO_CATEGORY.get(genre_folder, genre_folder.replace('_', '/'))
    return 'Unknown'


def extract_ly_header(ly_file):
    """Extract metadata from .ly file header block."""
    metadata = {}
    try:
        content = ly_file.read_text(encoding='utf-8', errors='ignore')

        # Find header block
        header_match = re.search(r'\\header\s*\{([^}]+)\}', content, re.DOTALL)
        if header_match:
            header_content = header_match.group(1)

            # Extract key-value pairs
            for match in re.finditer(r'(\w+)\s*=\s*"([^"]*)"', header_content):
                key = match.group(1).lower()
                value = match.group(2).strip()
                metadata[key] = value
    except Exception as e:
        print(f"  Warning: Could not read {ly_file}: {e}")

    return metadata


def find_variants(tune_folder, base_name):
    """Find all .ly file variants in a tune folder."""
    variants = []

    for ly_file in tune_folder.glob('*.ly'):
        stem = ly_file.stem

        # Extract variant info from filename
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


def find_assets(tune_folder, public_tunes_dir=None):
    """Find SVG and MIDI files for a tune folder."""
    assets = {
        'svg_files': [],
        'midi_files': [],
    }

    # Look for SVG files (page_1.svg pattern)
    for svg_file in tune_folder.glob('*_page_*.svg'):
        assets['svg_files'].append(svg_file.name)

    # Also check single SVG files
    for svg_file in tune_folder.glob('*.svg'):
        if '_page_' not in svg_file.name and svg_file.name not in assets['svg_files']:
            assets['svg_files'].append(svg_file.name)

    # Look for MIDI files
    for midi_file in tune_folder.glob('*.midi'):
        assets['midi_files'].append(midi_file.name)
    for midi_file in tune_folder.glob('*.mid'):
        assets['midi_files'].append(midi_file.name)

    return assets


def process_tune_folder(tune_folder):
    """Process a single tune folder and return tune data."""

    # Check for metadata.json
    metadata_file = tune_folder / 'metadata.json'

    if metadata_file.exists():
        try:
            with open(metadata_file, 'r', encoding='utf-8') as f:
                metadata = json.load(f)
        except Exception as e:
            print(f"  Warning: Could not read {metadata_file}: {e}")
            metadata = {}
    else:
        # Fall back to extracting from first .ly file
        metadata = {}
        ly_files = list(tune_folder.glob('*.ly'))
        if ly_files:
            metadata = extract_ly_header(ly_files[0])

    if not metadata.get('title'):
        # Use folder name as title
        metadata['title'] = tune_folder.name.replace('-', ' ').replace('_', ' ')

    # Get category from path
    category = get_category_from_path(tune_folder)

    # Find all variants
    variants = find_variants(tune_folder, metadata.get('title', ''))

    # Find assets
    assets = find_assets(tune_folder)

    # Build relative path for assets
    rel_path = tune_folder.relative_to(REPO_ROOT)

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
        'folder_path': str(rel_path),
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
    """Scan all tune folders and build catalog."""
    tunes = []

    print(f"Scanning {TUNES_DIR}...")

    for genre_folder in sorted(TUNES_DIR.iterdir()):
        if not genre_folder.is_dir():
            continue
        if genre_folder.name in EXCLUDE_DIRS:
            continue

        print(f"  Processing {genre_folder.name}...")

        for tune_folder in sorted(genre_folder.iterdir()):
            if not tune_folder.is_dir():
                continue
            if tune_folder.name in EXCLUDE_DIRS:
                continue

            # Only include tunes with metadata.json (migrated tunes)
            if not (tune_folder / 'metadata.json').exists():
                continue
                tune_entry = process_tune_folder(tune_folder)
                tunes.append(tune_entry)
                print(f"    + {tune_entry['title']}")

    return tunes


def main():
    print("=" * 60)
    print("Generating tunes-catalog.json")
    print("=" * 60)

    tunes = scan_tunes()

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
    print("=" * 60)


if __name__ == '__main__':
    main()
