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
originalKey  = d
originalMode = #minor

global = {
  \time 3/4
  \key \originalKey \originalMode
}

chordNames = \chordmode {
  \global
  
  % Dm    - A7  -  Dm   -  C  -  F  -  C  -  Dm   -  A7
    d2.:m   a:7    d:m     c     f     c     d2.:m   a:7
    d2.:m   a:7    d:m     c     f     c     d4:m   a2:7 d2.:m
  %  d2.:m   a:7    d:m    c   f   c     g:m/d    a
  %  d2.:m   a:7    d:m    c   f   a:7/e  d:m/a  d:m
}
violin_music = \relative c'' {
  \global
  | d4 d8 e f d
  | cs4\mordent cs8( d) e cs
  | d4 d8( e) f d
  | e4 e8( f) g e
\break
  | f4 f8( g) a f
  | g4 e8( f) g e
  | d4 d8( f) e d
  | cs4\mordent cs8( d) e cs
\break
  | d4 d8( e) f d
  | cs4\mordent cs8( d) e cs
  | d4 d8( e) f d
  | e4 e8( f) g e
\break
  | f4 f8( g) a f
  | g4.\mordent bf8 a g
  | f8 d \grace f8 <<\stemDown a,4  e'4.\mordent>> d8
  | d2.\fermata
}

bass_music = \relative c {
  \global
  \clef bass
  | d4   f    d  % Dm
  | a4   cs   a  % A
  | d4   f    d  % Dm
  | c!4  e    c  % C
  | f4   a    f  % 
  | c4   e    c  % C
  | d4   bf   g  % 
  | a4   cs   a  % A
  | d4   f    d  % Dm
  | a4   cs   a  % A
  | d4   f    d  % Dm
  | c!4  e    c  % C
  | f4   a    f  % 
  | e4   g    cs,
  | d4  a'   a,
  | d2.\fermata
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
