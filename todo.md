# TO DO

- review the Gymnopedie tunes

- The Kreisler folder still has two full-score .ly files; they will both appear in the index. If you want one renamed/removed or a single canonical version, tell me which to keep.

- update the filters in the index page

- Regenerate index with corrected counts

- Fix `\slide` function to accept numeric arguments (e.g., #5) robustly and update dependent scores

- update the tunes:
  - "Blue Lou"
  - Summertime
  - Minor Swing
  - Nuages
  - J'attendrai
  - ./tunes/Classical/Vocalise_Rachmaninoff
  - Indifférence

=> "Cokas Dance"

=> comme une fleur

=>   - Summertime

shouldn't the update-csv-keys-from-ly be part of a visitor pattern?

## DONE

### Star-Spangled Banner reorganization (2026-01-02)

- Reorganized The Star-Spangled Banner to have one full SATB version in original key (E major) and simplified single-voice versions in multiple keys
- Created new base file with single melody line using `\scoreIfStandalone` pattern
- Updated all key-specific files (A, B, C, D, Eb, G) to use simplified single-voice version
- Preserved full SATB version as `The-Star-Spangled-Banner_SATB.ly` in original key only
- Added proper poet attribution: "Music by John Stafford Smith" and "Lyrics by Francis Scott Key"
- Regenerated all PDFs and SVG preview files for all versions
- The B major version already existed and is now confirmed complete

### Multi-key file migration and index fixes (2026-01-01 to 2026-01-02)

- Migrated 11 tunes to `\scoreIfStandalone` pattern: Besame-Mucho, Erev-shel-Shoshanim, Katyusha, Korobeiniki-Tetris, Polyushko-pole, Emma_(Waltz), Numi-numi, Papirosen, Bella-Ciao, Tsiganisky, Gary-Owen
- Fixed generate-index-page.py to recognize key-specific files and inherit metadata from base files
- Key-specific files now automatically inherit composer, country, and style from base files
- Fixed special character handling in make-score-preview-svg.sh for filenames with brackets
- Added timestamp checking to make-score-preview-svg.sh (only regenerates when .ly file is newer)
- Added --force flag to make-score-preview-svg.sh for forcing regeneration
- Enhanced update-all-previews.sh and make-score-preview-svg.sh with failure tracking and logging
- Failed files are now logged to TODO-List_Fix-Failed-LilyPond-Files.md with error details
- Scripts now provide summary statistics (processed, success, failed, skipped)

### Earlier work

- update the metadata, move it to the right folder and update the index

- fixed loading slowness issue on index page - page now loads with pre-sorted tunes and correct dark mode
