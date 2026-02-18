\version "2.24"
\language "english"
\include "../../common/common-header.ily"

\include "./Le-Pornographe.ly"

\header {
  title = "Le Pornographe"
  subtitle = "Key: D minor"
  composer = "Georges Brassens"
  style = "Chanson"
  country = "France"
}

targetKey = d

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key d \minor
      \transpose \originalKey \targetKey \melody
    }
    \addlyrics { \words }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 100 }
}
