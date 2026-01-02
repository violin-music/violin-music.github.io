\version "2.24.4"
\include "./Papirosen.ly"

\header {
  title = "Papirosen"
  subtitle = "Key: D minor"
}

targetKey = d

\score {
  \new Staff {
    \key d \minor
    \transpose \originalKey \targetKey \melody
  }
  \layout { }
  \midi { \tempo 4 = 126 }
}
