\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Variazioni sulla follia di Spagna"
  subtitle = "As played in the movie Stradivari"
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
  g2.:m   d:7    g:m     f
%  bf      f      g2.:m   d:7
%  g2.:m   d:7    g:m     f     bf     f     g4:m   d2:7 g2.:m
}

violin_music = \relative c''' {
  \global
  | g4 g8 a bf g
  | fs4\mordent fs8( g) a fs
  | g4 g8( a) bf g
  | a4 a8( bf) c a
  
}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \violin_music }
  >>
  \layout { }
  \midi { }
}
