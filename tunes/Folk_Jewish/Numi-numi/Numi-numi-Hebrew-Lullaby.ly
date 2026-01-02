\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Numi numi - Hebrew Lullaby"
  composer = "Traditional Hebrew"
  country = "Jewish"
  genre = "Folk"
  subgenre = "Lullaby"
}

% Define original key
originalKey = d
originalMode = #minor

global = {
  \time 4/4
  \key \originalKey \originalMode
  \tempo 4=100
}

chordNames = \chordmode {
  \global
}

melody = \relative c' {
  \global
  d4 d a' a
  g8( f) g( a)  g4( f)
  d4 d g g
  f2 r2

  \break
  d4 d a' a
  g8( f) g( a)  g4( f)
  c4 c f ef
  d2 r2

  \break
  g4. d8 g d g a
  g2. f4
  g f bf a
  g2. d4
  \break
  g4. d8 g a  bf a
  g2. f4
  g f c' bf
  a1
}

words = \lyricmode {
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (lyrics . ,words)
     (unit . "4")
     (bpm  . 100))
  \melody
