\version "2.24.4"
\include "./Numi-numi-Hebrew-Lullaby.ly"

\header {
  title = "Numi numi - Hebrew Lullaby"
  subtitle = "Key: C minor"
}

targetKey = c

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key c \minor
      \transpose \originalKey \targetKey \melody
    }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
