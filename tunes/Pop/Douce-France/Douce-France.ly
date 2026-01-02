\version "2.24.4"
\include "../../common/includes.ly"
\include "../../common/include-score-if-standalone.ily"

\header {
  title = "Douce France"
  composer = "Charles Trenet and Leo Chauliac"
  style = "Chanson"
  country = "France"
  genre = "Pop"
}

\include "../../common/common-header.ily"

global = {
  \time 4/4

  \tempo 4=100
}

chordNames = \chordmode {
  \global
  bf2
  bf2 g:m c:m f:7
  bf2 g:m c:m f:7
bf2 g:m c:m f:7
bf2 g:m c:m f:7
}


refrain = {

}
melody = \relative c'' {
  \key bf \major
  \time 2/4

  r4  d8 cs
  \bar "||"
  \time 4/4
  d2 bf2
  r4 c8 d c a g f
  bf2 g2
  r4 c8 d c a g f
  bf2 g2
  %%% refrain

   r4 ef8 f g a g f  f1 ~ f2

  %%% refrain
r4  d'8 cs
  d2 bf2
  r4 c8 d c a g f
  bf2 g2
  r4 c8 d c a g f
  bf2 g2
  r4 ef8 f g a bf c
  d1 ~
  d2 r4 f8 e
  f2 d2
  r4 ef8 f ef d c bf
  ef2 bf2 ~ 
  bf2 r4 df8 c 
  df2 bf2
  r4 gf8 af bf c df bf 
  c1 ~ c2 r4 d8 cs
  d2 bf2
  r4 c8 d c a g f 
  bf2 g2
  r4 c8 d c a g f
  bf2 g2
  r4 ef8 f g a bf c
  d1 ~
  
  
}

words = \lyricmode {


}

% Define original key for transpositions
originalKey = bf
originalMode = #major

\scoreIfStandalone
  #`((unit . "4")
     (bpm  . 100))
  <<
    \new ChordNames \chordNames
    \new Staff {
      \global
      \melody
    }
  >>

% Additional transposed version (in B flat -> transpose to B)
% You can create separate files like Douce-France_(B).ly for other keys
