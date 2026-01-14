\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Chi Mai"
  composer = "Ennio Morricone"
  subtitle = "Theme for the 1981 French film Le Professionnel (The Professional)."
}

global = {
  \time 12/8
  \key a \major
  %\tempo 4=100
}

chordNames = \chordmode {
  \global
  %s1. 
  fs1.:m           e 1.              fs1.:m    b2.:m   e2.
  a1.:maj7         d 2.:maj7  d2.    cs1.      cs1.          fs1.:m     
  d2.:maj7   gs1.:dim       cs1.:7   fs1.:m           
}

violin_music = \relative c''' {
  \global
  %a'4. a4. a4. a4.
  cs4. cs4. r4. cs4.
  r4. r8 b8 a b4. r4.
  a4. fs4. r4.  gs4 a8
  \break
  a4.  d,4. r4.  gs4 fs8
  gs4. cs,4. r4.  r4.
  r4.  fs4 e8 fs4. b,4. 
  \break  
  r4. cs'4. b4. r4.
  cs4.  r4.  r4.  r4.
  cs4.  r4.  cs4.  cs4.
  \break  
  r4.  r8 b8 a8 b4. r4.
  a4.  fs'4.  r4.  gs,4 a8
  \break
  r4.  r4. r4. r4.
  

}

words = \lyricmode {
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \violin_music }

  >>
  \layout { }
  \midi { }
}
