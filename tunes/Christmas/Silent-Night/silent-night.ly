\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "silent-night_music.ily"

\header {
  title = "Silent Night"
  subtitle = "Key: Bb major"
  composer = "Franz Gruber (1787-1863)"
  poet = "Joseph Mohr"
  style = "christmas carol"
  country = "Austria"
  key = "Bb"
}

targetKey = bf

\score {
  <<
    \new Staff {
      \key \targetKey \major
      \transpose \originalKey \targetKey \melody
    }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
