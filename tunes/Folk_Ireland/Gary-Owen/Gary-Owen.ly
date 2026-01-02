\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Gary Owen"
  composer = "Traditional Irish"
  country = "Ireland"
  genre = "Folk"
  subgenre = "Irish"
}

% Define original key
originalKey = g
originalMode = #major

global = {
  \time 6/8
  \key \originalKey \originalMode
  \tempo 4. = 120
}

chordNames = \chordmode {
  \global
  \partial 8 r8
  g
}

melody = \relative c''' {
  \global
  \repeat volta 2 {
  \partial 8
  g16 fs
  e8 d c   b a g
  b8. c16 b8 b4 g'16 fs
  e8 d c   b a g
  a8. b16 a8 a4  g'16 fs
  \break
  e8 d c   b a g

  g'4 a8 b4 a8 g8
  fs e d e g  b,4 a8 a4
  }
  \break
    \repeat volta 2 {

b16 c
  d4 b8 d4 b8
  d4 b8 d8 g fs
  e4 c8 e4 c8
  e4 c8 e4 fs8
  \break
  g4 a8 b4 a8
  g8 fs e8 d4 b8
  d8 e fs  g8 d b
  a8. b16 a8 a4.
    }
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (unit . "4.")
     (bpm  . 120))
  \melody
