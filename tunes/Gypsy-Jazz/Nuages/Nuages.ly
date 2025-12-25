\version "2.24.4"
\language "english"
\include "../../common/stylesheet_fiddle.ly"
\include "../../common/common-header.ily"

\header {
  title = "Nuages"
  composer =  "Django"
  country = "France"
}

global = {
  \time 4/4
  \key c \major
  %\tempo 4=100
}

chordNames = \chordmode {
  \global
  r1
  ef1:9   d1:7  g1   g1
  ef1:9   d1:7  g1   g1
  fs:dim  b:7   e:m  e:m
  a2:7   af2:7  a1:7  d2:7 ef:7 d1:7
  ef1:9   d1:7  g1   g1
  af1:7   g1:7  c1   c1
  c1:m   c1:m   g1   g1
  ef1:9   d1:7  g1   g1


  
}

melody = \relative c'' {
  \global
%  r2 r2 
  r4 cs8 d a'8\flageolet gs4 g16 fs 
  f2. e4 ef2. d4 
  d1 
  %\break
  r4 cs8 d a'8\flageolet gs8 
  ~ \tuplet 3/2 {gs8 g fs} 
 \break 
  f2. e4 
  ef2. d4
  d1
  r4 as8 b b'8 a4 g16 fs
\break  
  a2 ~ a4 a4 ~ 
  a4   as,8 b b'8 a g16 fs a fs 
  g1
  r4 fs8 g b g4 e16 d
\break  
  cs4. cs8 c2 
  cs4 e8 fs \tuplet 3/2 {g4 a b} 
  d1
  r4 cs,8 d a'8\flageolet gs4 g16 fs
  \break
  f2. e4 
  ef2. f4 d1
  r4 cs8 d d'8 cs4 c16 b
  \break
  bf2. a4 
  af2 g4 g8 g8
  g1
  r4 fs8 g g'8 f4 ef16 f 
  \break
  g1
  r4 fs,8 g g'8 f4 ef16 f 
  g1
  r4 cs,,8 d a'8\flageolet gs4 g16 fs
  \break
  f2. e4 ef2 d4 b' g cs,8 d 
  \tuplet 3/2 {g8 d c}
  \tuplet 3/2 {b8 g d ~}  d4 r4 r2  
  

}

words = \lyricmode {
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
