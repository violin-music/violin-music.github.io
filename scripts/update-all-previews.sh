#!/usr/bin/env bash
set -uo pipefail  # Removed -e to allow graceful error handling

# Batch generate SVG files for all LilyPond scores
# Skips files that already have SVG pages generated
# Failed files are logged to TODO-List_Fix-Failed-LilyPond-Files.md

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
SVG_SCRIPT="$SCRIPT_DIR/make-score-preview-svg.sh"
TODO_FILE="$REPO_ROOT/TODO-List_Fix-Failed-LilyPond-Files.md"

# Counters for summary
TOTAL_PROCESSED=0
TOTAL_SUCCESS=0
TOTAL_FAILED=0
TOTAL_SKIPPED=0

cd "$REPO_ROOT"

# Find all .ly files (excluding includes, practice files, etc.)
echo "🎵 Finding LilyPond files to process..."

# Get list of tune directories from index and save to temp file
TEMP_LIST=$(mktemp)
python3 -c "
import re
from pathlib import Path

index = open('index.html').read()
dirs = set(re.findall(r'data-directory=\"([^\"]+)\"', index))

for d in sorted(dirs):
    dir_path = Path(d)
    if not dir_path.exists():
        continue

    # Find main .ly files (excluding _music.ily)
    ly_files = [f for f in dir_path.glob('*.ly')
                if '_music.ily' not in f.name
                and not f.name.endswith('.ily')
                and 'PREVIEW WRAPPER' not in open(f).read(500)]

    for ly in ly_files:
        # Check for new naming convention: basename_page_1.svg
        svg = ly.parent / (ly.stem + '_page_1.svg')
        if not svg.exists():
            print(str(ly))
" > "$TEMP_LIST"

# Process each file
while read -r ly_file; do
    TOTAL_PROCESSED=$((TOTAL_PROCESSED + 1))
    echo "Processing: $ly_file"

    # Run the script and capture output
    if OUTPUT=$("$SVG_SCRIPT" "$ly_file" 2>&1); then
        if echo "$OUTPUT" | grep -q "✓ SVG files are up to date"; then
            echo "  ✓ Up to date"
            TOTAL_SKIPPED=$((TOTAL_SKIPPED + 1))
        else
            echo "  ✓ Success"
            TOTAL_SUCCESS=$((TOTAL_SUCCESS + 1))
        fi
    else
        echo "  ✗ Failed (compilation error)"
        TOTAL_FAILED=$((TOTAL_FAILED + 1))
    fi
done < "$TEMP_LIST"

# Clean up temp file
rm -f "$TEMP_LIST"

echo ""
echo "════════════════════════════════════════════════════════════"
echo "✓ Batch processing complete!"
echo ""
echo "Summary:"
echo "  Total files processed: $TOTAL_PROCESSED"
echo "  Successfully generated: $TOTAL_SUCCESS"
echo "  Already up to date: $TOTAL_SKIPPED"
echo "  Failed: $TOTAL_FAILED"
echo ""

if [ $TOTAL_FAILED -gt 0 ]; then
    echo "⚠️  Failed files have been logged to:"
    echo "   $TODO_FILE"
    echo ""
    echo "Recent failures:"
    tail -50 "$TODO_FILE" | grep "^## Failed:" | tail -5
fi

echo "════════════════════════════════════════════════════════════"
