\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/include-score-if-standalone.ily"

\header {
  title = "Bella Ciao"
  composer = "Traditional Italian"
  country = "Italy"
  genre = "Folk"
}

% Define original key
originalKey = d
originalMode = #minor

global = {
  \time 2/4
  \key \originalKey \originalMode
}

melody = {
  \global
  r8 a d' e'
  f' d'~ d'4
  r8 a d' e'
  f' d'~ d'4
  r8 a d' e'
  f'4 e'8 d'
  f'4 e'8 d'
  a'4 a'
  a'8 a'[ g' a']
  bf'8 bf'~ bf'4
  r8 bf' a' g' bf' a'~ a'4
  r8 a' g' f' e'4 a' f' e' d'2
}

chordChanges = \chordmode {
  \global
  d2:m d:m d:m d:m d:m d:m d:m
  a:7 a:7 g:m g:m d:m d:m a:7 d4:m a4:7 d:m
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordChanges)
     (unit . "4")
     (bpm  . 100))
  \melody
