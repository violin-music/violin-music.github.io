\version "2.24.4"
\language "english"
\include "../../common/include-score-if-standalone.ily"
\include "../../common/common-header.ily"

\header {
  title = "Katyusha"
  subtitle = "Катюша"
  instrument = "Violin"
  composer = "Matvey Blanter"
  country = "Russia"
  genre = "Folk"
}

% Define original key
originalKey = e
originalMode = #minor

global = {
  \time 2/4
  \key \originalKey \originalMode
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  e1:m e1:m
  b1:7  e2:m e2:m
  e4:m c4
  g4 e4:7
  a2:m  e2:m
  a2:m  e2:m
  b2:7  e2:m
}

melody = \relative e' {
  \global
  | e4. fs8 
  | g4. e8 
  | g[ g] fs e
  | fs4 b,8 r
  \break
  | fs'4. g8 
  | a4. fs8
  | a8 a g fs 
  | e4 e16 fs g a
  \break
  \repeat volta 2 {
    | b4 e 
    | d e8 d
    | c8. c16 b8 a 
    | b4 e,
    \break
    r8 c'4 a8
    b4. g8
  }
  \alternative {
    {  a8 a g fs
       e4 e16 fs g a}
    {  a8 b cs ds
       e2 }
  }
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`((chords . ,chordNames)
     (unit . "4")
     (bpm  . 100))
  \melody
