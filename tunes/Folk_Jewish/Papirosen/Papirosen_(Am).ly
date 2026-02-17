\version "2.24.4"
\include "./Papirosen.ly"

\header {
  title = "Papirosen"
  subtitle = "Key: A minor"
}

targetKey = a

\score {
  \new Staff {
    \key \targetKey \originalMode
    \transpose \originalKey \targetKey \melody
  }
  \layout { }
  \midi { \tempo 4 = 126 }
}
