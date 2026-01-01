\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

% Set flag to prevent included parts from generating their own scores
#(ly:set-option 'included-as-part #t)

% Include the three part files (music definitions only)
\include "The-Mad-Lover_part_Violin.ly"
\include "The-Mad-Lover_part_Viola.ly"
\include "The-Mad-Lover_part_Bass.ly"

\header {
  title = "The Mad Lover"
  subtitle = "5. Air - Full Score"
  composer = "John Eccles (1668-1735)"
  country = "England"
  genre = "Classical"
}

\layout {
  \context {
    \Score
    \consists #(bars-per-line-engraver '(4 4 4 4 4 4 4 4 4 6))
  }
}



\score {
  <<
    \new ChordNames \with { chordChanges = ##t } { \chordNames }
    \new StaffGroup <<
      \new Staff = "violin" \with { instrumentName = "Violin" } { \clef treble \violin_music }
      \new Staff = "viola"  \with { instrumentName = "Viola"  } { \clef alto   \viola_music }
      \new Staff = "bass"   \with { instrumentName = "Bass"   } { \clef bass   \bass_music }
    >>
  >>
  \layout { }
  \midi { }
}
