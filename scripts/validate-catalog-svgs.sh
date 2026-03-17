#!/bin/bash
# Validate that all SVG paths in tunes-catalog.json exist in the repository
# Run this after catalog generation to catch missing/misnamed files before deployment

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
CATALOG="$REPO_ROOT/tunes-catalog.json"

if [ ! -f "$CATALOG" ]; then
    echo "ERROR: Catalog not found at $CATALOG"
    exit 1
fi

errors=0
warnings=0

echo "Validating SVG paths in tunes-catalog.json..."

# Extract all svg paths and check if files exist
while IFS= read -r svg; do
    if [ -n "$svg" ]; then
        full_path="$REPO_ROOT/$svg"
        if [ ! -f "$full_path" ]; then
            echo "MISSING: $svg"
            ((errors++))
        fi
    fi
done < <(jq -r '.tunes[].svg // empty' "$CATALOG")

# Also check for tunes with empty svg_files arrays
while IFS= read -r title; do
    if [ -n "$title" ]; then
        echo "WARNING: No SVG files for: $title"
        ((warnings++))
    fi
done < <(jq -r '.tunes[] | select(.svg_files | length == 0) | .title' "$CATALOG")

echo ""
echo "================================"
if [ $errors -gt 0 ]; then
    echo "FAILED: $errors SVG files missing!"
    exit 1
fi

if [ $warnings -gt 0 ]; then
    echo "PASSED with $warnings warnings (tunes without SVGs - may be pending build)"
else
    echo "PASSED: All SVG files exist"
fi
