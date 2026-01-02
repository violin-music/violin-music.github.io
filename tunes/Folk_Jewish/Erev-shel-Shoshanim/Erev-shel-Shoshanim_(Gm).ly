\version "2.24.4"
\include "./Erev-shel-Shoshanim.ly"

\header {
  title = "Erev shel Shoshanim"
  subtitle = "Key: G minor"
}

targetKey = g

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \songChords }
    \new Staff <<
      \key g \minor
      \new Voice = "mel" { \transpose \originalKey \targetKey \songMelody }
      \new Lyrics \lyricsto "mel" { \set stanza = "1." \verseOne }
      \new Lyrics \lyricsto "mel" { \set stanza = "2." \verseTwo }
    >>
  >>
  \layout {
    \override Lyrics.LyricText.font-size = #-2
  }
  \midi { \tempo 4 = 120 }
}
