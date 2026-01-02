\version "2.24.4"
\include "./bella-ciao.ly"

\header {
  title = "Bella Ciao"
  subtitle = "Key: E minor"
}

targetKey = e

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordChanges }
    \new Staff {
      \key e \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
