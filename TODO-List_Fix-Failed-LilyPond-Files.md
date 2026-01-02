# TODO List - Fix Failed LilyPond Files

**Total: 50 files** that failed to compile during batch preview generation.

**Common Error Pattern:** Most files fail with `warning: no such internal option: no-midi`
This indicates they're using deprecated LilyPond syntax.

---

## Christmas Songs (7 files)

- [ ] `Christmas/Carol-of-the-bells/Carol-of-the-bells_SATB.ly`
- [ ] `Christmas/Silent-Night/Silent Night Quartet/violin1_part.ly`
- [ ] `Christmas/Silent-Night/Silent Night2.ly`
- [ ] `Christmas/Silent-Night/SilentNight.ly`
- [ ] `Christmas/Silent-Night/silent_night ORIGINAL.ly`
- [ ] `Christmas/Silent-Night/silent_night.ly`

---

## Classical Music (7 files)

- [ ] `Classical/Mozart_Eine Kleine Nachtmusik/Eine Kleine Nachtmusik.ly`
- [ ] `Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurcaNotes.ly`
- [ ] `Classical/Pachelbel_Canon-in-D/template - Duet.ly`
- [ ] `Classical/Pachelbel_Canon-in-D/canon in D - Rock Violin.ly`
- [ ] `Classical/Pachelbel_Canon-in-D/canon in D - Violin I._ NEW relative.ly`
- [ ] `Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly`

---

## Folk Tunes (7 files)

- [x] `Folk_Canada/L-Air-Mignonne/L-Air-Mignonne.ly` ✓ Fixed - Added missing layout statement
- [ ] `Folk_England/Greensleeves/greensleeves (Em).ly`
- [ ] `Folk_England/Greensleeves/greensleeves_guitar.ly`
- [ ] `Folk_England/Greensleeves/greensleeves_melody.ly`
- [ ] `Folk_Jewish/Chosen-Kalle-Mazel-Tov/Chosen_Kalle_Mazel_Tov.ly`
- [ ] `Folk_Russia/Polyushko-pole/Plaine, ma plaine+Gm+Cm.ly`
- [ ] `Folk_Russia/Polyushko-pole/Plaine, ma plaine.ly`

---

## Jazz & Gypsy Jazz (5 files)

- [ ] `Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly`
- [ ] `Jazz/Misty/Misty_Piano.ly`
- [ ] `Jazz/Summertime/Summertime_Grappelli.ly`
- [ ] `Latina/Besame-Mucho/Besame_Mucho.ly`
- [ ] `Latina/Besame-Mucho/Besame_mucho_from-MuseScore.ly`

---

## Soundtracks (4 files)

- [ ] `Soundtrack/In-the-Mood-for-Love/In-the-Mood-for-Love.ly`
- [ ] `Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly`
- [ ] `Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly`
- [ ] `Wedding/Mendelssohn_Wedding-March/Mendelssohn_Wedding-March (For Organ).ly`

---

## Practice Files (10 files)

- [ ] `Practice/A-major-pentatonic-7.ly`
- [ ] `Practice/My Gypsy Jazz Practice.ly`
- [ ] `Practice/MyViolinBook/BasicScales.ly`
- [ ] `Practice/MyViolinBook/bend.ly`
- [ ] `Practice/MyViolinBook/bend test.ly`
- [ ] `Practice/MyViolinBook/myStaffAndTimeSettings.ly`
- [ ] `Practice/MyViolinBook/modes.ly`
- [ ] `Practice/MyViolinPracticeBook/Formatting-of-piece-headers.ly`
- [ ] `Practice/MyViolinPracticeBook/notes.ly`
- [ ] `Practice/MyViolinPracticeBook/ii-V-I-Lick-in-D-Em-A7-D.ly`
- [ ] `Practice/Practice_All.ly`
- [ ] `Practice/Practice_Shifts.ly`
- [ ] `Practice/Untitled.ly`

---

## Lilypond How-To / Tutorial Files (9 files)

- [ ] `Lilypond_How-to/A in thirds.ly`
- [ ] `Lilypond_How-to/HarpConcert.ly`
- [ ] `Lilypond_How-to/Untitled.ly`
- [ ] `Lilypond_How-to/circularStaff.ly`
- [ ] `Lilypond_How-to/dark-mode-sheet-music.ly`
- [ ] `Lilypond_How-to/count-in.ly`
- [ ] `Lilypond_How-to/eyeGlasses.ly`
- [ ] `Lilypond_How-to/lilyfied/snippet-map-1178644136.ly`
- [ ] `Lilypond_How-to/lilyfied/snippet-names-1178644136.ly`

---

## Fix Strategy

1. **Analyze Common Error**: Check if files use `-dno-midi` flag or deprecated syntax
2. **Update Syntax**: Remove or replace deprecated flags
3. **Test Compilation**: Compile each file to verify fixes
4. **Regenerate Previews**: Run batch preview generation on fixed files

---

## Progress

- **Total Files**: 50
- **Fixed**: 1
- **Remaining**: 49
- **Status**: In progress

### Recent Fixes

1. `Folk_Canada/L-Air-Mignonne/L-Air-Mignonne.ly` - Added missing `\layout { }` statement

## Failed: Eine-Kleine-Nachtmusik.ly - 2026-01-01 23:55:32

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly`

Error:
```
warning: no such internal option: no-midi
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.aVbXwvcE'
Processing `tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/../../common/common-header.ily:26:1: error: syntax error, unexpected \header

\header {
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly:13:1: error: syntax error, unexpected '}'

}
Interpreting music...
Interpreting music...[8]
Preprocessing graphical objects...
MIDI output to `Eine-Kleine-Nachtmusik.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly"
```

---

## Failed: KV331_3_RondoAllaTurca-Violin.ly - 2026-01-01 23:55:43

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly:72:26: warning: barcheck failed at: 1/8
  <a-1 a,>8-.\f <b b,>-. 
                         |
[8][16][24][32]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...WARNING: (#{ g103}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g105}#) and (#{ g104}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)

fatal error: failed files: "tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly"
```

---

## Failed: KV331_3_RondoAllaTurcaNotes.ly - 2026-01-01 23:55:44

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurcaNotes.ly`

Error: No SVG output generated by LilyPond (compilation may have succeeded but produced no output files)

---

## Failed: KV331_3_RondoAllaTurca-Violin-MacBookAir.ly - 2026-01-01 23:55:54

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly:70:26: warning: barcheck failed at: 1/4
  <a-1 a,>4-.\f <b b,>-. 
                         |
[8][16][24][32][40][48][56][64]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...WARNING: (#{ g103}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g105}#) and (#{ g104}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)

fatal error: failed files: "tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly"
```

---

## Failed: template-Duet.ly - 2026-01-01 23:55:56

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly`

Error:
```
Processing `tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly:5:17: error: syntax error, unexpected STRING, expecting '.' or '='
version "2.10.10
                "
tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly:1: warning: no \version statement found, please add

\version "2.24.4"

for future compatibility
Interpreting music...
warning: cannot find property type-check for `instrument' (translation-type?).  perhaps a typing error?
warning: skipping assignment
warning: cannot find property type-check for `instrument' (translation-type?).  perhaps a typing error?
warning: skipping assignment
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly"
```

---

## Failed: canon-in-D-Violin-I._-NEW-relative.ly - 2026-01-01 23:56:09

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly:26:2: warning: barcheck failed at: 1/4
 
 | R1*2   % 1 & 2
[8][16][24][32][40][48]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly"
```

---

## Failed: Paganini-Concerto-4.ly - 2026-01-01 23:56:15

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly`

Error:
```

Interpreting music...[8][16]
Preprocessing graphical objects...
Interpreting music...
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly:49:3: warning: barcheck failed at: 3/8
  
  R2.*2
[8][16]
Preprocessing graphical objects...
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly:49:3: warning: barcheck failed at: 3/8
  
  R2.*2
MIDI output to `Paganini-Concerto-4.midi'...
MIDI output to `Paganini-Concerto-4-1.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly"
```

---

## Failed: Passacaglia_double-stops.ly - 2026-01-01 23:56:23

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly`

Error:
```
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly:65:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly"
```

---

## Failed: Passacaglia_Arpegios.ly - 2026-01-01 23:56:28

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly`

Error:
```
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly:58:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly"
```

---

## Failed: Portnoff_Russian-Fantasia-2.ly - 2026-01-01 23:56:30

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly`

Error:
```
      \globalMovement$1 \violinMovement$
                                        1Violin
Unbound variable: #{1Violin}#
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:241:5: error: errors found, ignoring music expression
    
    \new Staff \with {
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:251:15: error: unknown escaped string: `\titleMovement'
      piece = 
              \titleMovement$1
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:251:29: error: syntax error, unexpected NUMBER_IDENTIFIER
      piece = \titleMovement
                            $1
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:257:3: error: syntax error, unexpected SYMBOL
  
  ViolinMovement(`I')
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:257:18: error: undefined character or shorthand: `
  ViolinMovement(
                 `I')
ERROR: In procedure %resolve-variable:
Unbound variable: fold
```

---

## Failed: greensleeves_[Guitar & Vocal].ly - 2026-01-01 23:56:40

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves_[Guitar & Vocal].ly`

Error:
```
\include "../../common/common-header.ily" } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves_[Guitar & Vocal].midi'...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves_[Guitar & Vocal].ly"
```

---

## Failed: greensleeves_melody.ly - 2026-01-01 23:56:50

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves_melody.ly`

Error:
```
\include "../../common/common-header.ily" } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves_melody.midi'...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves_melody.ly"
```

---

## Failed: greensleeves-(Em).ly - 2026-01-01 23:56:53

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves-(Em).ly`

Error:
```
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.spjKvQjg'
Processing `tunes/Folk_England/Greensleeves/greensleeves-(Em).ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves-(Em).ly:23:7: error: wrong type for argument 1.  Expecting pitch, found "e"
 \key 
      e \minor

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves-(Em).midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves-(Em).ly"
```

---

## Failed: Bella_Ciao-v2.ly - 2026-01-01 23:56:54

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly`

Error:
```
Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: skipping zero-duration score
  
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: skipping zero-duration score
  
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: to suppress this, consider adding a spacer rest
  
  <<
fatal error: failed files: "tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly"
```

---

## Failed: Dark-Eyes_2.ly - 2026-01-01 23:56:55

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_2.ly`

Error: No SVG output generated by LilyPond (compilation may have succeeded but produced no output files)

---

## Failed: Dark-Eyes_3.ly - 2026-01-01 23:56:59

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly`

Error:
```
warning: no such internal option: no-midi
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.HZyJACzs'
Processing `tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly'
Parsing...
error: version with third number omitted is only allowed for stable releases (when the second number is even)
Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `Dark-Eyes_3.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly"
```

---

## Failed: Blues-en-Mineur_Chords_Arpeggios.ly - 2026-01-01 23:57:02

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly`

Error:
```
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly:60:21: error: unknown escaped string: `\melody'
    \new Staff {    
                    \melody }
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly:60:21: error: string outside of text script or \lyricmode
    \new Staff {    
                    \melody }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8]
Preprocessing graphical objects...
Interpreting music...[8]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly"
```

---

## Failed: Je-Cherche-Apres-Titine_[Henri-Crolla].ly - 2026-01-01 23:57:14

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Je-Cherche-Apres-Titine/Je-Cherche-Apres-Titine_[Henri-Crolla].ly`

Error:
```
                 (bars-per-line-engraver '(4))
Unbound variable: bars-per-line-engraver

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16][24][32][40][48][56]
Preprocessing graphical objects...
Interpreting music...
Interpreting music...
warning: cannot find: `#<unspecified>'
[8][16][24][32][40][48][56]
Preprocessing graphical objects...
MIDI output to `Je-Cherche-Apres-Titine_[Henri-Crolla].midi'...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
fatal error: failed files: "tunes/Gypsy-Jazz/Je-Cherche-Apres-Titine/Je-Cherche-Apres-Titine_[Henri-Crolla].ly"
```

---

## Failed: Tchavolo-Swing.ly - 2026-01-01 23:57:15

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly`

Error:
```
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:1: error: unknown escaped string: `\sectionLetter'

\sectionLetter "C"
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:1: error: string outside of text script or \lyricmode

\sectionLetter "C"
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:18: error: string outside of text script or \lyricmode
\sectionLetter "C
                 "
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:166:10: error: cannot find file: `../common/score.ly'
(search path: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing:/Users/Marc/Projects/violin-music.github.io:/opt/local/share/lilypond/2.24.4/ly:/opt/local/share/lilypond/2.24.4/ps:/opt/local/share/lilypond/2.24.4/scm:/opt/local/share/lilypond/2.24.4/fonts/otf/:/opt/local/share/lilypond/2.24.4/fonts/svg/:')
\include 
         "../common/score.ly"

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

fatal error: failed files: "tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly"
```

---

## Failed: Misty_Piano.ly - 2026-01-01 23:57:16

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly`

Error:
```
  \layout {\context {\Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:22: error: unknown escaped string: `\Score'
  \layout {\context {
                     \Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:22: error: string outside of text script or \lyricmode
  \layout {\context {
                     \Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:39: error: not a note name: Span_bar_engraver
  \layout {\context {\Score \consists 
                                      Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:446:1: error: syntax error, unexpected '}'

}%% end of score-block 

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

fatal error: failed files: "tunes/Jazz/Misty/Misty_Piano.ly"
```

---

## Failed: Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly - 2026-01-01 23:57:44

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly`

Error:
```
               | % 2
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:51:5: warning: mid-measure time signature without \partial
    
    \time 4/4 
[8][16][24][32]
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:90:28: warning: barcheck failed at: 1/4G-1/4
    a a, c16 e f a b2      
                           | % 41
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:91:78: warning: barcheck failed at: 1/4
    \grace{\stemUp c16  [ b a b  ]  } \stemNeutral c8 d, c' d, e' d c b      
                                                                             | % 42
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:94:87: warning: barcheck failed at: 17/32
    g'' f e d c16 d c a g4 f64 \tuplet 3/2{e4 d c  } \tuplet 3/2{b a g  } f64 e4      
                                                                                      | % 45
[40]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 4 or 5 pages...
Drawing systems...
fatal error: failed files: "tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly"
```

---

## Failed: Schindlers_List_Theme_Solo_Violin.ly - 2026-01-01 23:57:51

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly`

Error:
```
    R1 *3  | %
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:45:6: warning: mid-measure time signature without \partial
     
     \time 3/4
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:48:5: warning: mid-measure time signature without \partial
    
    \time 4/4
[8][16][24][32]
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:87:28: warning: barcheck failed at: 1/4G-1/4
    a a, c16 e f a b2      
                           | % 41
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:89:5: warning: barcheck failed at: 1/4
    
    | a4.( b,8)   c16( e a c)  e( a c d)
[40]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly"
```

---

## Failed: Eine-Kleine-Nachtmusik.ly - 2026-01-02 10:24:34

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly`

Error:
```
warning: no such internal option: no-midi
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.Va5ZSArK'
Processing `tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/../../common/common-header.ily:26:1: error: syntax error, unexpected \header

\header {
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly:13:1: error: syntax error, unexpected '}'

}
Interpreting music...
Interpreting music...[8]
Preprocessing graphical objects...
MIDI output to `Eine-Kleine-Nachtmusik.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Mozart_Eine-Kleine-Nachtmusik/Eine-Kleine-Nachtmusik.ly"
```

---

## Failed: KV331_3_RondoAllaTurca-Violin.ly - 2026-01-02 10:24:43

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly:72:26: warning: barcheck failed at: 1/8
  <a-1 a,>8-.\f <b b,>-. 
                         |
[8][16][24][32]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...WARNING: (#{ g103}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g105}#) and (#{ g104}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)

fatal error: failed files: "tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin.ly"
```

---

## Failed: KV331_3_RondoAllaTurcaNotes.ly - 2026-01-02 10:24:44

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurcaNotes.ly`

Error: No SVG output generated by LilyPond (compilation may have succeeded but produced no output files)

---

## Failed: KV331_3_RondoAllaTurca-Violin-MacBookAir.ly - 2026-01-02 10:24:53

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly:70:26: warning: barcheck failed at: 1/4
  <a-1 a,>4-.\f <b b,>-. 
                         |
[8][16][24][32][40][48][56][64]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...WARNING: (#{ g103}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g104}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g105}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g105}#) and (#{ g104}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g104}#) and (#{ g103}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g103}#) and (#{ g102}#)
WARNING: (#{ g106}#): `toplevel-scores' imported from both (#{ g102}#) and (#{ g100}#)

fatal error: failed files: "tunes/Classical/Mozart_Rondo-Alla-Turca/KV331_3_RondoAllaTurca-Violin-MacBookAir.ly"
```

---

## Failed: template-Duet.ly - 2026-01-02 10:24:54

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly`

Error:
```
Processing `tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly:5:17: error: syntax error, unexpected STRING, expecting '.' or '='
version "2.10.10
                "
tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly:1: warning: no \version statement found, please add

\version "2.24.4"

for future compatibility
Interpreting music...
warning: cannot find property type-check for `instrument' (translation-type?).  perhaps a typing error?
warning: skipping assignment
warning: cannot find property type-check for `instrument' (translation-type?).  perhaps a typing error?
warning: skipping assignment
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Pachelbel_Canon-in-D/template-Duet.ly"
```

---

## Failed: canon-in-D-Violin-I._-NEW-relative.ly - 2026-01-02 10:25:05

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly`

Error:
```
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly:26:2: warning: barcheck failed at: 1/4
 
 | R1*2   % 1 & 2
[8][16][24][32][40][48]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Classical/Pachelbel_Canon-in-D/canon-in-D-Violin-I._-NEW-relative.ly"
```

---

## Failed: Paganini-Concerto-4.ly - 2026-01-02 10:25:09

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly`

Error:
```

Interpreting music...[8][16]
Preprocessing graphical objects...
Interpreting music...
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly:49:3: warning: barcheck failed at: 3/8
  
  R2.*2
[8][16]
Preprocessing graphical objects...
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly:49:3: warning: barcheck failed at: 3/8
  
  R2.*2
MIDI output to `Paganini-Concerto-4.midi'...
MIDI output to `Paganini-Concerto-4-1.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Paganini_Concerto-4/Paganini-Concerto-4.ly"
```

---

## Failed: Passacaglia_double-stops.ly - 2026-01-02 10:25:15

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly`

Error:
```
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly:65:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_double-stops.ly"
```

---

## Failed: Passacaglia_Arpegios.ly - 2026-01-02 10:25:19

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly`

Error:
```
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly:58:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Interpreting music...
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Classical/Passacaglia-for-Violin-and-Viola-(Halvorsen-Johan)/Passacaglia_Arpegios.ly"
```

---

## Failed: Portnoff_Russian-Fantasia-2.ly - 2026-01-02 10:25:20

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly`

Error:
```
      \globalMovement$1 \violinMovement$
                                        1Violin
Unbound variable: #{1Violin}#
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:241:5: error: errors found, ignoring music expression
    
    \new Staff \with {
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:251:15: error: unknown escaped string: `\titleMovement'
      piece = 
              \titleMovement$1
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:251:29: error: syntax error, unexpected NUMBER_IDENTIFIER
      piece = \titleMovement
                            $1
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:257:3: error: syntax error, unexpected SYMBOL
  
  ViolinMovement(`I')
/Users/Marc/Projects/violin-music.github.io/tunes/Classical/Portnoff_Russian-Fantasia-2/Portnoff_Russian-Fantasia-2.ly:257:18: error: undefined character or shorthand: `
  ViolinMovement(
                 `I')
ERROR: In procedure %resolve-variable:
Unbound variable: fold
```

---

## Failed: greensleeves_[Guitar & Vocal].ly - 2026-01-02 10:25:29

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves_[Guitar & Vocal].ly`

Error:
```
\include "../../common/common-header.ily" } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves_[Guitar & Vocal].midi'...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves_[Guitar & Vocal].ly"
```

---

## Failed: greensleeves_melody.ly - 2026-01-02 10:25:39

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves_melody.ly`

Error:
```
\include "../../common/common-header.ily" } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves_melody.midi'...
Finding the ideal number of pages...
Fitting music on 1 or 2 pages...
Drawing systems...
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: Found infinity or nan in output.  Substituting 0.0
warning: cannot find SVG font #f
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves_melody.ly"
```

---

## Failed: greensleeves-(Em).ly - 2026-01-02 10:25:41

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves-(Em).ly`

Error:
```
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.1ZPH4wWj'
Processing `tunes/Folk_England/Greensleeves/greensleeves-(Em).ly'
Parsing...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_England/Greensleeves/greensleeves-(Em).ly:23:7: error: wrong type for argument 1.  Expecting pitch, found "e"
 \key 
      e \minor

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8][16]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `greensleeves-(Em).midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Folk_England/Greensleeves/greensleeves-(Em).ly"
```

---

## Failed: Bella_Ciao-v2.ly - 2026-01-02 10:25:42

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly`

Error:
```
Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: skipping zero-duration score
  
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: to suppress this, consider adding a spacer rest
  
  <<
Interpreting music...
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: skipping zero-duration score
  
  <<
/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly:54:3: warning: to suppress this, consider adding a spacer rest
  
  <<
fatal error: failed files: "tunes/Folk_Italy/Bella-Ciao/Bella_Ciao-v2.ly"
```

---

## Failed: Dark-Eyes_2.ly - 2026-01-02 10:25:43

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_2.ly`

Error: No SVG output generated by LilyPond (compilation may have succeeded but produced no output files)

---

## Failed: Dark-Eyes_3.ly - 2026-01-02 10:25:45

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly`

Error:
```
warning: no such internal option: no-midi
Changing working directory to: `/var/folders/06/fvhzgnnx58gcmzzrq_lr_nyh0000gn/T/tmp.vBaWwoE2'
Processing `tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly'
Parsing...
error: version with third number omitted is only allowed for stable releases (when the second number is even)
Interpreting music...[8][16][24][32]
Preprocessing graphical objects...
Interpreting music...
MIDI output to `Dark-Eyes_3.midi'...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Folk_Russia/Dark-Eyes/Dark-Eyes_3.ly"
```

---

## Failed: Blues-en-Mineur_Chords_Arpeggios.ly - 2026-01-02 10:25:54

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly`

Error:
```
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly:60:21: error: unknown escaped string: `\melody'
    \new Staff {    
                    \melody }
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly:60:21: error: string outside of text script or \lyricmode
    \new Staff {    
                    \melody }

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

Interpreting music...[8]
Preprocessing graphical objects...
Interpreting music...[8]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Gypsy-Jazz/Blues-en-Mineur/Blues-en-Mineur_Chords_Arpeggios.ly"
```

---

## Failed: Tchavolo-Swing.ly - 2026-01-02 10:26:00

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly`

Error:
```
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:1: error: unknown escaped string: `\sectionLetter'

\sectionLetter "C"
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:1: error: string outside of text script or \lyricmode

\sectionLetter "C"
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:158:18: error: string outside of text script or \lyricmode
\sectionLetter "C
                 "
/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly:166:10: error: cannot find file: `../common/score.ly'
(search path: `/Users/Marc/Projects/violin-music.github.io/tunes/Gypsy-Jazz/Tchavolo-Swing:/Users/Marc/Projects/violin-music.github.io:/opt/local/share/lilypond/2.24.4/ly:/opt/local/share/lilypond/2.24.4/ps:/opt/local/share/lilypond/2.24.4/scm:/opt/local/share/lilypond/2.24.4/fonts/otf/:/opt/local/share/lilypond/2.24.4/fonts/svg/:')
\include 
         "../common/score.ly"

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

fatal error: failed files: "tunes/Gypsy-Jazz/Tchavolo-Swing/Tchavolo-Swing.ly"
```

---

## Failed: Misty_Piano.ly - 2026-01-02 10:26:00

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly`

Error:
```
  \layout {\context {\Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:22: error: unknown escaped string: `\Score'
  \layout {\context {
                     \Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:22: error: string outside of text script or \lyricmode
  \layout {\context {
                     \Score \consists Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:445:39: error: not a note name: Span_bar_engraver
  \layout {\context {\Score \consists 
                                      Span_bar_engraver}}
/Users/Marc/Projects/violin-music.github.io/tunes/Jazz/Misty/Misty_Piano.ly:446:1: error: syntax error, unexpected '}'

}%% end of score-block 

Note: compilation failed and \version outdated, did you
update input syntax with convert-ly?

  https://lilypond.org/doc/v2.24/Documentation/usage/updating-files-with-convert_002dly

fatal error: failed files: "tunes/Jazz/Misty/Misty_Piano.ly"
```

---

## Failed: Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly - 2026-01-02 10:26:22

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly`

Error:
```
               | % 2
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:51:5: warning: mid-measure time signature without \partial
    
    \time 4/4 
[8][16][24][32]
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:90:28: warning: barcheck failed at: 1/4G-1/4
    a a, c16 e f a b2      
                           | % 41
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:91:78: warning: barcheck failed at: 1/4
    \grace{\stemUp c16  [ b a b  ]  } \stemNeutral c8 d, c' d, e' d c b      
                                                                             | % 42
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly:94:87: warning: barcheck failed at: 17/32
    g'' f e d c16 d c a g4 f64 \tuplet 3/2{e4 d c  } \tuplet 3/2{b a g  } f64 e4      
                                                                                      | % 45
[40]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 4 or 5 pages...
Drawing systems...
fatal error: failed files: "tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_for_Strings_and_Solo_Violin.ly"
```

---

## Failed: Schindlers_List_Theme_Solo_Violin.ly - 2026-01-02 10:26:29

File: `/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly`

Error:
```
    R1 *3  | %
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:45:6: warning: mid-measure time signature without \partial
     
     \time 3/4
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:48:5: warning: mid-measure time signature without \partial
    
    \time 4/4
[8][16][24][32]
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:87:28: warning: barcheck failed at: 1/4G-1/4
    a a, c16 e f a b2      
                           | % 41
/Users/Marc/Projects/violin-music.github.io/tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly:89:5: warning: barcheck failed at: 1/4
    
    | a4.( b,8)   c16( e a c)  e( a c d)
[40]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
fatal error: failed files: "tunes/Soundtrack/Schindlers_List/Schindlers_List_Theme_Solo_Violin.ly"
```

---
