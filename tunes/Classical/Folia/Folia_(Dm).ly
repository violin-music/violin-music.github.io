\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\include "./Folia.ly"
% english.ly     c   d   e   f   g   a   b   -s/-sharp   -f/-flat

\header {
    title    = "Folia"
    subtitle = "aka Folies d'Espagne"
    composer = "Traditional"
    country  = "Portugal"
    style    = "Renaissance"
    enteredby = "Marc Mouries"
}

targetKey = d

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key \targetKey \originalMode
      \transpose \originalKey \targetKey \violin_music
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
