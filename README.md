# Violin Music Collection

A browsable collection of violin sheet music with LilyPond source files, PDFs, MIDI playback, and SVG previews.

## Folder Structure

```
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
- **SVG Previews**: Click to view sheet music preview
- **Dark Mode**: Auto-switches based on time of day, or toggle manually
- **Direct Links**: Share links to specific tunes
- **Keyboard Navigation**: Arrow keys to navigate between tunes

## Usage

### Regenerate Index

After adding or modifying tunes, regenerate the index:

```bash
python3 generate-index-page.py
```

### Generate SVG Preview

Create an SVG preview for a LilyPond file:

```bash
./scripts/make-score-preview-svg.sh path/to/tune.ly
```

## Tune File Structure

Each tune folder typically contains:
- `TuneName.ly` - LilyPond source file
- `TuneName.pdf` - Compiled PDF
- `TuneName.midi` - MIDI file for playback
- `TuneName-preview.svg` - SVG preview for web display

For tunes with multiple keys:
- `TuneName_(Am).ly`, `TuneName_(Dm).ly`, etc.
