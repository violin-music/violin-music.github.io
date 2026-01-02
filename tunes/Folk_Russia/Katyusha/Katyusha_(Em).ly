\version "2.24.4"
\include "./Katyusha.ly"

\header {
  title = "Katyusha"
  subtitle = "Key: E minor"
}

targetKey = e

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key e \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
