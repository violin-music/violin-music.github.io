\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Tsiganisky"
  composer = "Traditional Russian"
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
  g1:m g1:m g1:m g1:m
}

melody = \relative bf' {
  \global
  \partial 8*3
  g'8 g g g4 ef8 c8 ~ c8
  g'8 g g g4 d8 bf8 ~ bf8
  g'8 g g g4 fs8 g a g f ef
  d1
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (unit . "4")
     (bpm  . 100))
  \melody
