\version "2.24.0"
\include "./Besame-Mucho.ly"

\header {
  title = "Bésame Mucho"
  subtitle = "Key: D minor"
}

targetKey = d

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff { \transpose \originalKey \targetKey \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
