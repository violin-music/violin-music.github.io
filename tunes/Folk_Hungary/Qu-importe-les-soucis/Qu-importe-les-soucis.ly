\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Qu'importe les soucis"
  subtitle = "As played by Yoska Nemeth"
  transcription = "Marc"
  composer = "Traditional Hungarian"
  style = "folk"
  country = "Hungary"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  g1:m
  f1:m
  bf
}

melody = \relative c''' {
  \global
  r8 g4 f8 ef d c4
  r8 f4 g8 af g f4
  r8 bf4 c8 d c bf af 
  g8. fs16 g8 af g f8 ef d c4
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
