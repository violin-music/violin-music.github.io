\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Polyushko-polye"
  subtitle = "Plaine, ma plaine (French) - The Cossack Patrol (English)"
  instrument = "Violin"
  composer = "Lev Knipper (1898-1974)"
  arranger = "Composed in 1934"
  country = "Russia"
  genre = "Folk"
}

% Define original key
originalKey = g
originalMode = #minor

global = {
  \time 4/4
  \key \originalKey \originalMode
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  g1:m d1:m g1:m  d1
  ef1   d1  ef1    d1
}

melody = \relative d'' {
  \global
  bf2 g4 bf
  a2 f4  d
  bf'8 a g f g4 d'4
  a2 d,2
  \break
  g4 f8 ef d c d ef
  d4 a' fs d
  g4 f8 ef d c d ef
  d2 r16 d cs d e fs g a
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (unit . "4")
     (bpm  . 100))
  \melody
