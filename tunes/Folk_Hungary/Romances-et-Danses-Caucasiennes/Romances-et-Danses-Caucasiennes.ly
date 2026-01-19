\version "2.24.0"
\include "english.ly"
\include "../../common/common-header.ily"

\header{
  title = "Romances et Danses Caucasiennes"
  composer = "Traditional"
  country = "Hungary"
  genre = "Folk"
  instrument = "Violin"
  meter = "meter"
}

global = {
  \time 4/4
  \tempo 4 = 160
  
}

chordNames = \chordmode {
  \global
  
  
}

melody = \relative c''' {
  \global
%   r1
%   g'4 bf a g f e d r4
%   a'4 d8 f a4 d,4
  \break
  a8. a16 \tuplet 3/2 {bf8 a gs} a8 f d4 
  \tuplet 3/2 {f8 g a}
  \tuplet 3/2 {a8 g f}  e8 g c,4
  g'8. g16 \tuplet 3/2 {a8 g f}  e8 g c,4
  \tuplet 3/2 {e8 f g }  \tuplet 3/2 {g8 f e } d4 r4   
  \break
  a'4 \tuplet 3/2 {bf8 a gs} a8 f d4 
  \tuplet 3/2 {f8 g a}
  \tuplet 3/2 {a8 g f}  e8 g c,4
  g'8. g16 \tuplet 3/2 {a8 g fs}  g8 e8 c4
  \tuplet 3/2 {e8 f g }  \tuplet 3/2 {g8 f e } d4 d4
  \break
  r4 d4
  
  
}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
