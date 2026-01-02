\version "2.24.4"
\include "./The-Star-Spangled-Banner.ly"

\header {
  title = "The Star-Spangled Banner"
  subtitle = "Key: C major"
}

targetKey = c

\score {
  <<
    \new Staff {
      \key c \major
      \transpose \originalKey \targetKey \melody
    }
    \new Lyrics \lyricsto "" \verseone
    \new Lyrics \lyricsto "" \versetwo
    \new Lyrics \lyricsto "" \versethree
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
