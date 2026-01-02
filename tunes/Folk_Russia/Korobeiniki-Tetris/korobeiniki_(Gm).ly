\version "2.24.4"
\include "./korobeiniki.ly"

\header {
  title = "Коробейники (Korobeiniki)"
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
  \midi { \tempo 4 = 150 }
}
