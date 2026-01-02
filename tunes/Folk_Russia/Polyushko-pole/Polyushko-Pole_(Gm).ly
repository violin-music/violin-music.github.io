\version "2.24.4"
\include "./Polyushko-Pole.ly"

\header {
  title = "Polyushko-polye"
  subtitle = "Key: G minor"
}

targetKey = g

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key g \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
