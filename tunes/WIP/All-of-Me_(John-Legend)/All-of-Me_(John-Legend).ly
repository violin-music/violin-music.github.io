\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "All of Me"
  composer = "John-Legend"
}

global = {
  \time 4/4
  \key e \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  e1:m  c1   g1  d1
  e1:m
}

melody = \relative c'' {
  \global
  R1
  R1
  R1
  R1
  \break
  r2 a8 b b4
  b8 b b4 b g
  g4 r a8 b b4
  b8 a b4 b8 a g g (
  e4) r8 e8 b'8 b4.
  c2 b8 g ~ g4
  c2 b8 g4 g8
}

words = \lyricmode {


}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
   % \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
