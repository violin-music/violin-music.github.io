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

% Drive transposition by targetKey (original in B♭)
targetKey = e

\score {
  <<
    \new Staff {
      \key \targetKey \major
      \melody
    }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
