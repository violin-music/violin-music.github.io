\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "La Bohème"
  subtitle = "Aznavour"
  composer = "Charles Aznavour"
  style = "chanson"
  tagline = ""
}


global = {
  \time 3/4
  \key c \minor
  %\tempo 4=100
}

chordNames = \chordmode {
  \global
  f2.:m 
  f2.:m   f2.:m 
  c2.:m   c2.:m 
  f2.:m   f2.:m 
  c2.:m   
  f2.:m     f2.:m   
  f2.:m   
  c2.:m   
  
}

melody = \relative c' {
  \global
  r4 c'4 b 
  c4 f,2 ~ f4 c' b c g2 ~
  \break
  g8 g fs g bf a 
  af2.
  g2 f4 g2.
  \break
  \repeat volta 2 {
  r8 f8 f g f g 
  af g af bf af bf
  c b c d c d 
  ef4 g,2
    \break

  r8 ef' d c ef d 
  af2.
  r8 ef' d c ef d 
  g,8 g   fs g   bf a 
  \break
  af!  g   f!  g   f g 
  af g af bf  af bf
  c8 b c d c d 
  ef4 ef2
  \break
  r8 ef8 d ef g f
  f8 ef ef d f ef
  ef8 d ef d c b
  c2. ~ 
  \break
  c4 c4 b 
  c4 f,2 ~ 
  f4 c' b
  c4 g2
  \break
  g4 bf a
  af!2 g4 
  d2 ef4 
  g2. ~ 
  \break
  g4 c4 b
  c4 f,2 ~
  f4 d'4 c
  ef4 g,2
  \break
  ef'4 d c
  bf2 af4
  }
  \alternative {
   {g2 f4 g2. ~ g2 r4}
   {g2 b4 c2. ~ c2 r4}   
  }
}

words = \lyricmode {
  \skip 4  \skip 1  \skip 1  \skip 1  \skip 1
  \skip 4 \skip 4  \skip 4 \skip 4
  \skip 4 \skip 4  \skip 4 \skip 4
  \skip 4 \skip 4  \skip 4 \skip 4
  Je vous parle d'un temps
  
}

\score {
  <<
   \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
