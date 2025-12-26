\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/stylesheet_fiddle.ly"

\header {
  title    = "Emma's Waltz"
  composer = "Traditional Finnish"
  country = "Finland"
  genre = "Folk"
}

\include "Emma_(Waltz)_music.ily"


targetKey = e

\score {
  \new Staff \with {
    midiInstrument = "violin"
  } { \transpose d \targetKey \emmaMelody }
  \layout { }
  \midi { \tempo 4 = 120 }
}
