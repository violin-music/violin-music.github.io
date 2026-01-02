\version "2.24.4"
\include "./Polyushko-Pole.ly"

\header {
  title = "Polyushko-polye"
  subtitle = "Key: A minor"
}

targetKey = a

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key a \minor
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
