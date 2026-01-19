\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Variazioni sulla follia di Spagna"
  subtitle = "As played in the movie Stradivari"
  genre = "Classical"
}

\paper {
  indent = 0
}

% Define original key
originalKey  = g
originalMode = #minor

global = {
  \time 3/4
  \key \originalKey \originalMode
  \tempo 4 = 80
}

chordNames = \chordmode {  
    g 2.:m        d2.:7        g2.:m        f2.     
    bf2.          f2.          g2.:m        d2.:7
%    g2.:m         d2.:7        g2.:m        f2.     
%    bf2.          f2.          g4:m  d2:7   g2.:m
}

violin_music = \relative c''' {
  \mark "@1 min 45"
  \global
  | g8. d32 bf g8. \tuplet 3/2 { bf,32( c d }  g,8) r16 g''16
  | fs8. \tuplet 3/2 { d32 a fs } d8.  r32 a'32  d16. e32 fs16. d32
  | g8. d32 bf g8. \tuplet 3/2 { bf,32( c d }  g,8) r16 bf''16
  | a8. \tuplet 3/2 { f32 c a } f8.  r32 c'32  f16. g32 a16. f32
  | bf8. f32 d bf8. \tuplet 3/2 { d,32( ef f }  bf,8) r16 bf''16

  | a8. \tuplet 3/2 { f32 c a } f8.  r32 c'32  f16. g32 a16. f32
  | g8. d32 bf g8. \tuplet 3/2 { bf,32( c d }  g,8) r16 g''16
    | fs2.
  %| g2.  | fs2.  | g2.  | f2.   | bf2.   | f2.   | g2 fs4   | g2.


}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \violin_music }
  >>
  \layout { }
  \midi { }
}
