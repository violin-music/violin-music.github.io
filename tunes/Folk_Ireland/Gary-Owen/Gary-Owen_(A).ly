\version "2.24.4"
\include "./Gary-Owen.ly"

\header {
  title = "Gary Owen"
  subtitle = "Key: A major"
}

targetKey = a

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key a \major
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4. = 120 }
}
