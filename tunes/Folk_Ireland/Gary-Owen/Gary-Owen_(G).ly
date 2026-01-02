\version "2.24.4"
\include "./Gary-Owen.ly"

\header {
  title = "Gary Owen"
  subtitle = "Key: G major"
}

targetKey = g

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key g \major
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4. = 120 }
}
