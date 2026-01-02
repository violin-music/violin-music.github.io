\version "2.24.4"
\include "./Tsiganisky.ly"

\header {
  title = "Tsiganisky"
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
