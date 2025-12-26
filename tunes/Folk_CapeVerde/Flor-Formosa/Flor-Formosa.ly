\version "2.19.17"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Flor Formosa"
  composer = "Djack Do Carmo"
  arranger = "transcription:  Mouries"
  style = "morna"
  country = "Cabo Verde"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=120
}

chordNames = \chordmode {
  \global
  s1  
  b2 e2:m   e1:m   g1  d2 a2:m 
  a1:m      e1:m   c1  b1
  b2 e2:m   e1:m   g1  d2 a2:m 
  a1:m      e1:m   c1  b1
}


melody = \relative c'' {
        \set midiInstrument = #"violin"
  \global
  %R1*5
   r2 r8 ds ds e fs fs fs fs 
  e e e b~
  b4 r4 r8 b d b
  d4. b8 d b g fs~
  fs c'4. r8 c a fs
  c' a fs r 
c' a fs e~ 
e2  r8 g b g
\tuplet3/2{c4 c c} b8 b r ds,~
ds4 r r8 ds' ds e 
\break
fs fs r fs e e e b~
b4 r r8 b g d'~
d4 b8 g d' b g fs~
fs c'4. r8 c4 a8
\break
c4. a8 c a fs ds 
e4 e8 g4 g8 a g 
c c4 c8 \tuplet3/2{e4 ds b~} 
b c8 b a4 b8 a 
\break
fs4 a8 fs ds4 

 
 

  
%  \break
  \mark "Solo"
  
  b'4
  e g b a
  g4 fs8 e ds e  r8 a\upbow ~ 
  a2 r2
  \break
  r8 b8 a fs a4.  g16 fs
  e4 r8 b8 e g b as 
  a g fs e ds e b'4
  a4  fs8 ds c a as b
  \break
  fs g gs a8    r4 b4
  e4 g b a
  g4 fs8 e ds e  r8 a\upbow 
  ~ a2 r4 fs4
  \break
  b8 as a4 fs g 
  e2  r8 g8 b as 
  a g fs e ds e r8 a\upbow ~ 
  a2  r8 ef e f 
  \break
  fs8-2 f fs-1 a   r8 g8 fs4
  b,2 r8 d c b 
  d2. c4
  fs,2.  c'4 
  \break
  \tuplet 3/2  { b4 a c} \tuplet 3/2  {b4 a c}
  c8 b8 a e8 ~ e8 g8 b d 
  df c b4. a8 g4 a8 b4  r8 b'8 a fs ds b c b a g fs b, r r r
  \break
  r4 r r r
  r r r r
  r r r r  
  r r r r
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
