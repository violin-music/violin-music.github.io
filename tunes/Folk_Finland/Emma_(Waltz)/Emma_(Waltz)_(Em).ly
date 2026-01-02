\version "2.24.4"
\include "./Emma_(Waltz).ly"

\header {
  title    = "Emma's Waltz"
  subtitle = "Key: E minor"
}

targetKey = e

\score {
  \new Staff {
    \key e \minor
    \transpose \originalKey \targetKey \emmaMelody
  }
  \layout { }
  \midi { \tempo 4 = 120 }
}
