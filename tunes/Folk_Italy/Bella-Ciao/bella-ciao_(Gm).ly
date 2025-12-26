\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "bella-ciao_music.ily"

\header {
  title = "Bella Ciao"
  subtitle = "Key: G minor"
  composer = "Traditional Italian"
  country = "Italy"
  style = "folk song"
}

targetKey = g

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chords }
    \new Staff {
      \key \targetKey \minor
      \context Voice = "voiceMelody" { \transpose \originalKey \targetKey \melody }
    }
  >>
  \midi {}
  \layout {}
}
