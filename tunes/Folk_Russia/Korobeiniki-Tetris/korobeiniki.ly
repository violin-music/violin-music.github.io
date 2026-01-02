\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Коробейники (Korobeiniki)"
  subtitle = "Tetris Theme"
  instrument = "Violin"
  poet = "Nikolaï Alekseïevitch Nekrassov"
  composer = "Traditional Russian"
  country = "Russia"
  genre = "Folk"
}

% Define original key
originalKey = a
originalMode = #minor

global = {
  \time 4/4
  \key \originalKey \originalMode
  \tempo 4=150
}

chordNames = \chordmode {
  \global
  a1:m a1:m g1 a1:m
  d1:m c1 g1 a1:m
}

melody = \relative b' {
  \global
  \clef "treble"

  \repeat volta 2 {
    e4 b8 c d4 c8 b
    a4 a8 c e4 d8 c
    b4 b8 c d4 e
    c4 a a2
    \break
    r8 d d f
    a4 g8 f
    e4 e8 c
    e4 d8 c
    b4 b8 c
    d4 e
    c a
    a2
    \break
  }
  <c e>2 <a c>2 d2 b c a gs b
  e2 c2 d2 b a4 c e e gs1
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (unit . "4")
     (bpm  . 150))
  \melody
