\version "2.24.4"
\include "./Papirosen.ly"

\header {
  title = "Papirosen"
  subtitle = "Key: C minor"
}

targetKey = c

\score {
  \new Staff {
    \key c \minor
    \transpose \originalKey \targetKey \melody
  }
  \layout { }
  \midi { \tempo 4 = 126 }
}
