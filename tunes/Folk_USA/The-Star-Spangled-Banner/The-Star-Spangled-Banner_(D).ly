\version "2.24.4"
\include "./The-Star-Spangled-Banner.ly"

\header {
  title = "The Star-Spangled Banner"
  subtitle = "Key: D major"
}

targetKey = d

\score {
  <<
    \new Staff {
      \key d \major
      \transpose \originalKey \targetKey \melody
    }
    \new Lyrics \lyricsto "" \verseone
    \new Lyrics \lyricsto "" \versetwo
    \new Lyrics \lyricsto "" \versethree
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
