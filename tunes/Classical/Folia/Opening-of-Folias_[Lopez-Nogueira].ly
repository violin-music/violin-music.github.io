\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Opening of Folias"
  composer = "Lopez Nogueira"
  country = "Portugal"
  genre = "Classical"
}

% Define original key
originalKey  = g
originalMode = #minor

global = {
  \time 3/4
  \key \originalKey \originalMode
}

chordNames = \chordmode {
  \global  
  g2.:m   d:7    g:m     f     bf     f     g2.:m   d:7
  g2.:m   d:7    g:m     f     bf     f     g4:m   d2:7 g2.:m
}
violin_music = \relative c''' {
  \global
  | g4 g8 a bf g
  | fs4\mordent fs8( g) a fs
  | g4 g8( a) bf g
  | a4 a8( bf) c a
\break
  | bf4 bf8( c) d bf
  | c4 a8( bf) c a
  | g4 g8( bf) a g
  | fs4\mordent fs8( g) a fs
\break
  | g4 g8( a) bf g
  | fs4\mordent fs8( g) a fs
  | g4 g8( a) bf g
  | a4 a8( bf) c a
\break
  | bf4 bf8( c) d bf
  | c4.\mordent ef8 d c
  | bf8 g \grace bf8 <<\stemDown d,4  a'4.\mordent>> g8
  | g2.\fermata
}

bass_music = \relative c' {
  \global
  \clef bass
  | g4   bf    g  % Dm
  | d4   fs   d  % A
  | g4   bf    g  % Dm
  | f!4  a    f  % C
  | bf4   d    bf  % 
  | f4   a    f  % C
  | g4   ef   c  % 
  | d4   fs   d  % A
  | g4   bf    g  % Dm
  | d4   fs   d  % A
  | g4   bf    g  % Dm
  | f!4  a    f  % C
  | bf4   d    bf  % 
  | a4   c    fs,
  | g4  d'   d,
  | g2.\fermata
}


\score {
  <<
    \new ChordNames 
      \with {}  { \chordNames }
    \new Staff
      \with {}  { \violin_music }
    \new Staff
      \with {}  { \bass_music }
  >>
  \layout { }
  \midi {\tempo 4 = 140 }
}
