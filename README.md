# Violin Music Collection

A browsable collection of violin sheet music with LilyPond source files, MIDI playback, and SVG scores.

## Folder Structure

```shell
/
├── tunes/              # All sheet music organized by genre/category
│   ├── Christmas/
│   ├── Classical/
│   ├── Folk_Canada/
│   ├── Folk_England/
│   ├── Folk_France/
│   ├── Folk_Ireland/
│   ├── Folk_USA/
│   ├── Gypsy-Jazz/
│   ├── Jazz/
│   ├── Jewish/
│   ├── Latina/
│   ├── Pop/
│   ├── Trad_Russia/
│   └── ...
├── scripts/            # Build and utility scripts
│   ├── make-score-preview-svg.sh
│   └── ...
├── docs/               # Documentation
├── index.html          # Main browsable index (auto-generated)
├── styles.css          # Stylesheet
├── tune-detail-view.js # Tune detail page functionality
└── generate-index-page.py  # Script to regenerate index.html
```

## Features

- **Browsable Index**: Filter by category, country, genre, difficulty, key, and more
- **MIDI Playback**: Play any tune directly in the browser with tempo control
- **SVG Scores**: View full sheet music with multi-page navigation
- **Dark Mode**: Auto-switches based on time of day, or toggle manually
- **Direct Links**: Share links to specific tunes
- **Keyboard Navigation**: Arrow keys to navigate between tunes and pages
- **Performance Mode**: Fullscreen viewing with tap zones for page turning

## Usage

### Regenerate Index

After adding or modifying tunes, regenerate the index:

```bash
python3 generate-index-page.py
```

### Generate SVG Files

**Single file** - Generate SVG pages for one LilyPond file:

```bash
./scripts/make-score-preview-svg.sh tunes/Classical/Adagio-G-minor/Adagio-G-minor.ly
# Outputs: Adagio-G-minor_page_1.svg, Adagio-G-minor_page_2.svg, etc.
```

**All missing files** - Batch generate SVGs for all tunes missing them:

```bash
./scripts/update-all-previews.sh
```

This script:

- Scans all tune directories listed in `index.html`
- Finds `.ly` files that don't have a corresponding `_page_1.svg`
- Generates SVG pages for each missing file
- Skips include files (`.ily`) and practice files

**Requirements**: `lilypond` must be installed and in your PATH.

## Tune File Structure

Each tune folder typically contains:

- `TuneName.ly` - LilyPond source file
- `TuneName.midi` - MIDI file for playback
- `TuneName_page_1.svg` - First page of score (SVG)
- `TuneName_page_2.svg` - Second page (if multi-page)

For tunes with multiple keys:

- `TuneName_(Am).ly`, `TuneName_(Dm).ly`, etc.
- `TuneName_(Am)_page_1.svg`, `TuneName_(Dm)_page_1.svg`, etc.

## LilyPond Header Metadata

The `generate-index-page.py` script reads metadata from LilyPond file headers to populate the index. Supported fields:

```lilypond
\header {
  title = "Tune Title"
  composer = "Composer Name"
  country = "Country"           % Used for country filter (e.g., "Ireland", "France")
  style = "Style"               % e.g., "Baroque", "Jig", "Waltz"
  tags = "tag1, tag2, tag3"     % Comma-separated searchable tags
  key = "Am"                    % Optional: override auto-detected key
  video = "https://..."         % Optional: YouTube or video URL
}
```

### Tags

The `tags` field allows you to add searchable keywords that don't appear in the title. For example, if your title is "Sonata No. 1 - Mvt. 4" but you want it searchable by "presto":

```lilypond
\header {
  title = "Sonata No. 1 - Mvt. 4"
  tags = "presto, baroque, bach"
}
```

Tags are combined with auto-detected tags (from folder structure and content) and displayed in the index.
