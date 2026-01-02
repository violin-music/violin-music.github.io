# Contributing to the Violin Music Collection

Thank you for contributing! This document outlines the standards for adding new tunes to this collection.

## Quick Checklist for New Tunes

When adding a new tune, ensure it has:

- [ ] **Proper metadata** in the `\header` block:
  - `composer` - Composer name or "Traditional"
  - `country` - Country of origin
  - `genre` or `style` - Music genre (e.g., "Folk", "Classical", "Jazz", "Pop", "Soundtrack")
- [ ] **Common header include**: `\include "../../common/common-header.ily"`
- [ ] **Current LilyPond version**: `\version "2.24.4"` (or later)
- [ ] **Correct naming conventions**:
  - Use hyphens for spaces: `The-Star-Spangled-Banner.ly`
  - Use underscores for variants: `Greensleeves_[Easy].ly`
  - Use parentheses for keys: `Besame-Mucho_(Dm).ly`
  - No spaces in filenames
- [ ] **Multi-key setup** (if providing multiple keys):
  - Use `\scoreIfStandalone` pattern in base file
  - Define `originalKey` and `originalMode` variables
  - Create key-specific files that include the base file

## File Structure Example

### Single-Key File

```lilypond
\version "2.24.4"
\include "english.ly"

\header {
  title = "My Tune"
  composer = "Traditional"
  country = "Ireland"
  genre = "Folk"
}

\include "../../common/common-header.ily"

melody = \relative c' {
  \key d \major
  \time 4/4
  % ... your melody here
}

\score {
  \new Staff { \melody }
  \layout { }
  \midi { }
}
```

### Multi-Key Setup (Base File)

```lilypond
\version "2.24.4"
\include "english.ly"
\include "../../common/include-score-if-standalone.ily"

\header {
  title = "My Tune"
  composer = "Traditional"
  country = "Ireland"
  genre = "Folk"
}

\include "../../common/common-header.ily"

% Define original key
originalKey = d
originalMode = #major

melody = \relative c' {
  \key \originalKey \originalMode
  \time 4/4
  % ... your melody here
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((unit . "4")
     (bpm  . 120))
  <<
    \new Staff { \melody }
  >>
```

### Multi-Key Setup (Key-Specific File)

Create a file like `My-Tune_(G).ly`:

```lilypond
\version "2.24.4"
\include "./My-Tune.ly"

\header {
  title = "My Tune"
  subtitle = "Key: G major"
}

targetKey = g

\score {
  \new Staff {
    \key g \major
    \transpose \originalKey \targetKey \melody
  }
  \layout { }
  \midi { \tempo 4 = 120 }
}
```

## Directory Structure

Place tunes in the appropriate directory:
- `tunes/Classical/` - Classical music
- `tunes/Folk_[Country]/` - Folk music by country (e.g., `Folk_Ireland`, `Folk_France`)
- `tunes/Jazz/` - Jazz standards
- `tunes/Pop/` - Pop music
- `tunes/Soundtrack/` - Film and TV soundtracks
- `tunes/Gypsy-Jazz/` - Gypsy jazz

## Generating Previews

After adding a tune, generate SVG previews:

```bash
bash scripts/make-score-preview-svg.sh path/to/your-tune.ly
```

Or regenerate all previews:

```bash
bash scripts/update-all-previews.sh
```

## More Information

See `docs/TUNE-STANDARDS.md` for detailed documentation on file standards and patterns.
