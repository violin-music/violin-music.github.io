\version "2.24.4"
\include "./Gary-Owen.ly"

\header {
  title = "Gary Owen"
  subtitle = "Key: D major"
}

targetKey = d

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key d \major
      \transpose \originalKey \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4. = 120 }
}
