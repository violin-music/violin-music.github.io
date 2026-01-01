\version "2.24.4"
\include "./The-Star-Spangled-Banner.ly"

\header {
  title = "Star Spangled Banner"
  subtitle = "Key: C major"
}

targetKey = c

\score {
  \context ChoirStaff <<
    \context Staff = women <<
      \context Voice = sopranos { \voiceOne << \transpose \originalKey \targetKey' { \global \sopMusic } >> }
      \context Voice = altos { \voiceTwo << \transpose \originalKey \targetKey' { \global \altoMusic } >> }
      \context Lyrics = altos \lyricsto altos \verseone
      \new Lyrics \lyricsto altos \versetwo
      \new Lyrics \lyricsto altos \versethree
    >>
    \context Staff = men <<
      \clef bass
      \context Voice = basses { << \transpose \originalKey \targetKey' { \global \bassMusic } >> }
    >>
  >>
  \layout { indent = 0.0\cm }
  \midi { \tempo 4 = 100 }
}
