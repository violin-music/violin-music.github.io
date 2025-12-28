\version "2.19.25"
\language "english"

\header {
  title = "Waltz No. 2"
  subtitle = "Suite for Variety Orchestra No. 1"
  composer = "Dmitri Shostakovich (1906-1975)"
  country = "Russia"
  style = "classical"
  key = "Cm"
}

\include "../../common/common-header.ily"

global = {
  \time 3/4
  \key c \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  c2.:m g2. c2.:m g2.
  c2.:m g2. c2.:m g2.
  c2.:m g2. c2.:m g2.
  d2.:m 
  
}

dcaf = \mark \markup{ \italic \small "D.C. al Fine"} % D.C. Al Fine Helper


melody = \relative c'' {
  \global
  

%\compressFullBarRests  
  R2.*4
  \break
    \repeat volta 2 {
  \mark \default

  g2. ef2( d4 )c2. ~ c4 c4 (d4)
  ef4( c ef  )
  g2( af4) 
  g2. f2.
    \break

  f2.\downbow d2( c4 
  b2.) ~ b4 g4( b) d( b d) f(g af)
  fs2. g2.
  \break
  
  \mark \default
  ef'2.\downbow d2( c4) bf2( af4 f2.)
  d'2. (c2 bf4 bf2 g4 )
  r4 ef4-.\downbow f-. 
  \break
  g\staccato
  g8 f g af 
  f4-. f8 ef f g ef4 r g
r4 ef4 f 
   g\staccato
  g8 f g af 
  f4 f8 ef f g 
  ef4 r g
  r4 c d
  \break
  ef ef8 d ef f
  d4 d8 c d ef 
  
}
\alternative {
  { c4 r4 r4 r2. r2. r2.}
  { c2.^"Fine" }
}
  \break
 %%% PART 2 %%%
  r4  r4 bf
  ef2.   
  ef2.   
  ef4 d c    
  bf g bf
  d2. d2.
  c4 bf g
  ef f g
    \break
  c2. bf2. 
  bf4 af g
  f ef f 
  g2( bf4)
  f2( bf4)
  g2 bf4 ^"rit"
  ef2 f4
    \break

  g2.^"a tempo" 
  g2.
  g4 f ef d bf d
  f2. f2.
  f4 ef d c g bf 
    \break
  ef2.
  ef2. 
  ef2. 
  f4 ef f 
  g2( ef4)
  bf4 c d
  ef4 f ef 
  df4 c b!
  \break
  \repeat volta 2 {
  c2 ef,4 ~ 
  ef d4 ef 
  c'2 ef,4 ~ 
  ef4 df'4 c 
  c2( bf4)
  a!2 bf4
  f'2 ef4
  df4 c cf 
  \break
  c!2 ef,4 ~ 
  ef4 d4 ef4 
  c'2  ef,4 ~ 
  ef4 f4 g4 
  af2 bf4
  \break
  c2 c4 
  d4( c d)
  }
\alternative {
  { ef2( df4)}
  { ef8( f) ef d ef f }

}
    g2\dcaf d4 

  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
