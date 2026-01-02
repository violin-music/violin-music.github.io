\version "2.24.4"
\include "./Katyusha.ly"

\header {
  title = "Katyusha"
  subtitle = "Key: B minor"
}

targetKey = b

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key b \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
