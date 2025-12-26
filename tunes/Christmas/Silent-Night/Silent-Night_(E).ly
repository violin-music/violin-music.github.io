\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "silent-night_music.ily"

\header {
  title = "Silent Night"
  subtitle = "Key: E major"
  composer = "Franz Gruber (1787–1863)"
  poet = "Joseph Mohr"
  style = "christmas carol"
  country = "Austria"
}

targetKey = e
octaveShift = c'

\score {
  <<
    \new Staff {
      \key \targetKey \major
      \transpose c \octaveShift { \transpose \originalKey \targetKey \melody }
    }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
