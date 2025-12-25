#!/usr/bin/env bash
set -euo pipefail

# Render SVG files from a LilyPond file
# Generates: <tune>_page_1.svg, <tune>_page_2.svg, etc.
#
# SVGs are processed to use currentColor for CSS theming

show_help() {
  cat <<EOF
Usage: $(basename "$0") [OPTIONS] file.ly

Render a LilyPond score to SVG files.

Output naming: <basename>_page_1.svg, <basename>_page_2.svg, etc.

Options:
  --help              Show this help.

The SVG is processed to support CSS theming:
  - Black strokes/fills are replaced with 'currentColor'
  - This allows the parent element's color to control the SVG

Examples:
  $(basename "$0") my-tune.ly
  # Outputs: my-tune_page_1.svg (and _page_2.svg, etc. if multi-page)

Requires:
  - lilypond
  - sed
EOF
}

if [ $# -eq 0 ]; then
  show_help
  exit 1
fi

# --- Parse options ---
while [[ $# -gt 0 ]]; do
  case "$1" in
    --help)
      show_help
      exit 0
      ;;
    -*)
      echo "Unknown option: $1" >&2
      show_help
      exit 1
      ;;
    *)
      LY_FILE="$1"
      shift
      break
      ;;
  esac
done

if [ -z "${LY_FILE:-}" ]; then
  echo "Error: no .ly file provided." >&2
  exit 1
fi

if [ ! -f "$LY_FILE" ]; then
  echo "Error: file not found: $LY_FILE" >&2
  exit 1
fi

# --- Check dependencies ---
command -v lilypond >/dev/null 2>&1 || { echo "Error: lilypond not found in PATH."; exit 1; }

BASENAME="$(basename "$LY_FILE" .ly)"
DIRNAME="$(dirname "$LY_FILE")"

# Use a unique temp directory to avoid conflicts
TEMP_DIR=$(mktemp -d)
TEMP_BASE="${TEMP_DIR}/${BASENAME}"

echo "Rendering SVG with LilyPond..."
#lilypond -fsvg --loglevel=ERROR -dno-midi -o "$TEMP_BASE" "$LY_FILE" 2>/dev/null
lilypond -fsvg  -dno-midi -o "$TEMP_BASE" "$LY_FILE" 


# Process SVG to make it CSS-themeable
process_svg() {
  local input="$1"
  local output="$2"
  sed -e 's/fill="#000000"/fill="currentColor"/g' \
      -e 's/fill="#000"/fill="currentColor"/g' \
      -e 's/fill:black/fill:currentColor/g' \
      -e 's/fill="black"/fill="currentColor"/g' \
      -e 's/stroke="#000000"/stroke="currentColor"/g' \
      -e 's/stroke="#000"/stroke="currentColor"/g' \
      -e 's/stroke:black/stroke:currentColor/g' \
      -e 's/stroke="black"/stroke="currentColor"/g' \
      "$input" > "$output"
}

# Find and process output SVGs
# LilyPond generates: basename.svg (single) or basename-1.svg, basename-2.svg (multi-page)
PAGE_COUNT=0

if [ -f "${TEMP_BASE}.svg" ]; then
  # Single page output
  PAGE_COUNT=1
  OUTPUT_FILE="${DIRNAME}/${BASENAME}_page_1.svg"
  echo "Processing page 1..."
  process_svg "${TEMP_BASE}.svg" "$OUTPUT_FILE"
  echo "  Created: $OUTPUT_FILE"
elif [ -f "${TEMP_BASE}-1.svg" ]; then
  # Multi-page output
  echo "Multi-page score detected."
  for svg_file in "${TEMP_BASE}"-*.svg; do
    # Extract page number from filename (e.g., basename-1.svg -> 1)
    PAGE_NUM=$(basename "$svg_file" .svg | sed "s/${BASENAME}-//")
    OUTPUT_FILE="${DIRNAME}/${BASENAME}_page_${PAGE_NUM}.svg"
    echo "Processing page ${PAGE_NUM}..."
    process_svg "$svg_file" "$OUTPUT_FILE"
    echo "  Created: $OUTPUT_FILE"
    PAGE_COUNT=$((PAGE_COUNT + 1))
  done
else
  echo "Error: no SVG output found from LilyPond." >&2
  rm -rf "$TEMP_DIR"
  exit 1
fi

# Clean up temp directory
rm -rf "$TEMP_DIR"

echo "Done: Generated ${PAGE_COUNT} page(s)"
echo "  SVGs use 'currentColor' - set color via CSS to theme them."
