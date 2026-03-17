#!/usr/bin/env python3
"""
Validate that all SVG paths in tunes-catalog.json exist in the repository.
Run this after catalog generation to catch missing/misnamed files before deployment.
"""

import json
import sys
from pathlib import Path
from urllib.parse import unquote

SCRIPT_DIR = Path(__file__).parent
REPO_ROOT = SCRIPT_DIR.parent
CATALOG = REPO_ROOT / "tunes-catalog.json"


def main():
    if not CATALOG.exists():
        print(f"ERROR: Catalog not found at {CATALOG}")
        sys.exit(1)

    with open(CATALOG, 'r', encoding='utf-8') as f:
        catalog = json.load(f)

    errors = 0
    warnings = 0

    print("Validating SVG paths in tunes-catalog.json...")

    for tune in catalog.get('tunes', []):
        title = tune.get('title', 'Unknown')
        svg_path = tune.get('svg')
        svg_files = tune.get('svg_files', [])

        # Check if primary SVG exists (URL-decode the path first)
        if svg_path:
            decoded_path = unquote(svg_path)
            full_path = REPO_ROOT / decoded_path
            if not full_path.exists():
                print(f"MISSING: {decoded_path} (for {title})")
                errors += 1

        # Warn about tunes with no SVG files
        if not svg_files:
            print(f"WARNING: No SVG files for: {title}")
            warnings += 1

    print("")
    print("=" * 40)
    if errors > 0:
        print(f"FAILED: {errors} SVG files missing!")
        sys.exit(1)

    if warnings > 0:
        print(f"PASSED with {warnings} warnings (tunes without SVGs - may be pending build)")
    else:
        print("PASSED: All SVG files exist")


if __name__ == '__main__':
    main()
