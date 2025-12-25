\include "../common/includes.ly"


\header {
  title = "Douce France"
}

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

\include "../common/score.ly"


\score {
  <<
    \new ChordNames{\transpose d b,\chordNames}
    \new Staff      {\transpose d b, \melody }
  >>
  \layout { }
  \midi { }
}