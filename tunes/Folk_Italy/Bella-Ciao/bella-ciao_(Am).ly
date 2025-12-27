\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "bella-ciao_music.ily"

\header {
  title = "Bella Ciao"
  subtitle = "Key: A minor"
  composer = "Traditional Italian"
  country = "Italy"
  style = "folk song"
}

targetKey = a

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordChanges }
    \new Staff {
      \key \targetKey \minor
      \context Voice = "voiceMelody" { \transpose \originalKey \targetKey \melody }
    }
  >>
  \midi {}
  \layout {}
}
