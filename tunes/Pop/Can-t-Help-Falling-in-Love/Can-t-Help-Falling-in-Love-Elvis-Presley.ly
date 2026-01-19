\version "2.24.0"
\language "english"


\header {
  title = "I can't help falling in love"
  composer = ""
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  f2 a2:m d1:m
  bf2 f2
  c:7
  
}

melody = \relative c' {
  \global
  \repeat volta 2 {
  f2 c'2  f,2. g8 a8 bf 2 a2 g2 ~ g4. c,8
  \break
  d2 e f \tuplet 3/2 { g4 a bf }
  a2 g2 f1 } 
  \break
  e8 a8 c8 e8 d2 e,8 a8 c8 e8 d2 e,8 a8 c8 e8 d2 c4 c4 ~c8
  a8 c8 a8 
  \break
  bf1 
%  \break
  f2 c'2  f,2. g8 a8 bf 2 a2 
  \break
  g2 ~ g4. c,8  d2 e 

  f2 \tuplet 3/2 { g4 a bf }
  a2 g2 f2 ~ f4. c8  
  \break 
  d2 e f2   
  \tuplet 3/2 { g4 a bf }  a2 g2 
  f1

  
}

words = \lyricmode {
  Wise men say on -- ly fools rush in,___
  But I can't help fall- ing in love with you
  Like a riv -- er flows sure- ly to the sea,
  dar -- ling, so it goes.
  Some things_ are meant to be.
  Take my hand, take my whole life too.___
  For I  can't help fal -- ling in love with you
  For I  can't help fal -- ling in love with you
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { indent =0}
  \midi { }
}
