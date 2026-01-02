\version "2.24.4"
\include "./The-Star-Spangled-Banner.ly"

\header {
  title = "The Star-Spangled Banner"
  subtitle = "Key: A major"
}

targetKey = a

\score {
  <<
    \new Staff {
      \key a \major
      \transpose \originalKey \targetKey \melody
    }
    \new Lyrics \lyricsto "" \verseone
    \new Lyrics \lyricsto "" \versetwo
    \new Lyrics \lyricsto "" \versethree
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
