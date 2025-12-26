\version "2.24.0"
\include "english.ly"

%#(set-global-staff-size 16.075)

\header {
  title     = "Adagio in G minor (Practice)"
  subtitle  = "per archi e organo (attributed to Albinoni, composed by Giazotto)"
  composer  = "Remo Giazotto (1910–1998)"
  country = "Italy"
  genre = "Classical"
}


\markup \bold "Adagio Arpeggio"

Adagio_Arpeggio_Cm_Fm = \relative c'' {
 g8-3    c  ef g
 ef   c  g  c
 ef-1   g-3  c-2  ef-4 
 c g ef c 
 \break
 c,-3    f  af c
 af   f  c  f
 af-1   c-3  f-2  af-4 
 f c af f 
}
\score {
  \new Staff { \Adagio_Arpeggio_Cm_Fm }
  \layout {indent=0 }
}

