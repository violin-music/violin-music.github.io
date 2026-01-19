\version "2.24"
\language "english"
\include "../../common/common-header.ily"

\include "./Le-Pornographe.ly"

\header {
  title = "Le Pornographe"
}

  
\score {
  <<
    \new ChordNames { \transpose d a,\chordNames}
    \new Staff                  { \transpose d a, \melody }
    \addlyrics { \words }
  >>
  \layout { indent = 0}
  \midi { }
}
