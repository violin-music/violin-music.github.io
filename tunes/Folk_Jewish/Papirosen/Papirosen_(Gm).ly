\version "2.24.4"
\include "./Papirosen.ly"

\header {
  title = "Papirosen"
  subtitle = "Key: G minor"
}

targetKey = g

\score {
  \new Staff {
    \key g \minor
    \transpose \originalKey \targetKey \melody
  }
  \layout { }
  \midi { \tempo 4 = 126 }
}
