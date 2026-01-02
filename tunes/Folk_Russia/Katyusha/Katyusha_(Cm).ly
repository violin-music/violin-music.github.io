\version "2.24.4"
\include "./Katyusha.ly"

\header {
  title = "Katyusha"
  subtitle = "Key: C minor"
}

targetKey = c

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key c \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
