# Tune File Standards

This document provides detailed standards and best practices for LilyPond tune files in this collection.

## Table of Contents

- [Metadata Requirements](#metadata-requirements)
- [File Naming Conventions](#file-naming-conventions)
- [Include Files](#include-files)
- [Multi-Key Pattern](#multi-key-pattern)
- [SVG Preview Generation](#svg-preview-generation)
- [Common Issues](#common-issues)

## Metadata Requirements

All tune files must include the following metadata in the `\header` block:

### Required Fields

```lilypond
\header {
  title = "Tune Title"
  composer = "Composer Name"  % or "Traditional"
  country = "Country"         % Country of origin
  genre = "Genre"            % or use 'style' for more specific classification
}
```

### Optional Fields

```lilypond
\header {
  subtitle = "Additional info"
  arranger = "Arranger Name"
  poet = "Lyricist Name"
  instrument = "Violin"
  style = "Specific style"    % e.g., "Chanson", "Jig", "Waltz"
}
```

### Genre Values

Use one of these standard genres:
- `Folk` - Folk music
- `Classical` - Classical music
- `Jazz` - Jazz standards
- `Pop` - Pop music
- `Soundtrack` - Film/TV music
- `Blues` - Blues
- `Gospel` - Gospel music

For more specific classification, use `style` in addition to or instead of `genre`:
- `style = "Jig"`, `style = "Waltz"`, `style = "Chanson"`, etc.

## File Naming Conventions

### Basic Rules

1. **Use hyphens for word separation**: `The-Star-Spangled-Banner.ly`
2. **Use underscores for variants**: `Greensleeves_[Easy].ly`
3. **Use parentheses for keys**: `Besame-Mucho_(Dm).ly`
4. **No spaces in filenames**
5. **Use proper capitalization**: Each word should be capitalized

### Examples

✅ **Good:**
- `Auld-Lang-Syne.ly`
- `Auld-Lang-Syne_(D).ly`
- `Auld-Lang-Syne_[Jig].ly`
- `Greensleeves_[Easy].ly`

❌ **Bad:**
- `auld lang syne.ly` (spaces, no caps)
- `Auld-Lang-Syne (D).ly` (space before parentheses)
- `Greensleeves-Easy.ly` (should use underscore + brackets for variants)

## Include Files

Every tune file must include:

```lilypond
\version "2.24.4"  % or later
\include "english.ly"  % if using English note names (c, d, e, etc.)

\header {
  % ... metadata here
}

\include "../../common/common-header.ily"
```

### Path Notes

- From `tunes/Folk_Ireland/Tune-Name/`: use `../../common/common-header.ily`
- From `tunes/Classical/Tune-Name/`: use `../../common/common-header.ily`
- Adjust path based on directory depth

## Multi-Key Pattern

When providing a tune in multiple keys, use the `\scoreIfStandalone` pattern.

### Base File: `Tune-Name.ly`

```lilypond
\version "2.24.4"
\include "english.ly"
\include "../../common/include-score-if-standalone.ily"

\header {
  title = "Tune Name"
  composer = "Composer"
  country = "Country"
  genre = "Genre"
}

\include "../../common/common-header.ily"

% Define original key
originalKey = d
originalMode = #major

global = {
  \time 4/4
  \key \originalKey \originalMode
}

melody = \relative c' {
  \global
  % ... melody here
}

% This score only renders when compiling THIS file directly
% It will NOT render when this file is \include'd by other files
\scoreIfStandalone
  #`((unit . "4")     % beat unit for MIDI tempo
     (bpm  . 120))    % tempo in BPM
  <<
    \new Staff { \melody }
  >>
```

### Key-Specific File: `Tune-Name_(G).ly`

```lilypond
\version "2.24.4"
\include "./Tune-Name.ly"

\header {
  title = "Tune Name"
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

### Benefits of This Pattern

1. **Single source of truth**: Melody defined once in base file
2. **Easy maintenance**: Fix melody in one place, all keys update
3. **Automatic transposition**: LilyPond handles key changes
4. **Clean organization**: Each key in its own file
5. **Standalone compilation**: Each file can be compiled independently

## SVG Preview Generation

### Individual File

```bash
bash scripts/make-score-preview-svg.sh path/to/tune.ly
```

### All Files

```bash
bash scripts/update-all-previews.sh
```

This script:
- Only regenerates if the .ly file is newer than existing SVG
- Logs failed compilations to `TODO-List_Fix-Failed-LilyPond-Files.md`
- Provides summary statistics

### Force Regeneration

```bash
bash scripts/make-score-preview-svg.sh --force path/to/tune.ly
```

## Common Issues

### Issue: `\scoreIfStandalone` not found

**Solution**: Add this line after version and language includes:
```lilypond
\include "../../common/include-score-if-standalone.ily"
```

### Issue: File doesn't compile

**Checklist:**
1. Check LilyPond version is 2.24.4 or compatible
2. Verify all include paths are correct
3. Ensure `\layout {}` block exists in `\score`
4. Check for syntax errors in the melody

### Issue: SVG not generating

**Common causes:**
1. No `\layout {}` block in score
2. Compilation errors (check the error log)
3. File uses special characters that need escaping

### Issue: Key-specific file doesn't transpose correctly

**Checklist:**
1. Base file defines `originalKey` and `originalMode`
2. Key-specific file defines `targetKey`
3. Using `\transpose \originalKey \targetKey` in the score
4. Melody uses `\key \originalKey \originalMode` in global section

## Examples

See these well-structured examples:
- `tunes/Folk_USA/The-Star-Spangled-Banner/` - Multi-key setup
- `tunes/Folk_Scotland/Auld-Lang-Syne/` - Multiple variants
- `tunes/Pop/Douce-France/` - Recently updated to standards
- `tunes/Folk_Ireland/The-Britches-Full-of-Stitches/` - Simple single-key file

## Validation Script

You can create a validation script to check if a tune meets standards:

```bash
# Check if file has required metadata
grep -q "composer.*=" tune.ly
grep -q "country.*=" tune.ly
grep -q "genre.*=" tune.ly || grep -q "style.*=" tune.ly

# Check if file includes common header
grep -q "common-header.ily" tune.ly
```

Consider adding this to your workflow!
