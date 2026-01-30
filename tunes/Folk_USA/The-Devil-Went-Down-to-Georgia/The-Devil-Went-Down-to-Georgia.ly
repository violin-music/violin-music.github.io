\version "2.24.4"
\language "english"

\header {
  title = "The Devil Went Down to Georgia"
  subtitle = "Personal transcription"
  tagline = ""
}

global = {
  \key d \minor
  \time 2/2
  \tempo 2 = 132
}

melody = \relative c'' {
  \global
  \clef treble
  \dynamicUp

  % 
  d8-3 cs8 d8 e8  f4  f8 g8 |
  a4  a8 b8  a8 g8 f8 e8 |
  c8 a8 c8 d8  e4-0  e8 f8 |
  g8 a8 g8 f8  e4  e8 a,8-0 |

  d8 e8 d8 a8  c8 d8 c8 a8 |
  bf8 c8 bf8 g8  a8 bf a8 f8 |
  g8 a8 g8 d8  f8 g8 f8 e8 |
  d4 r4 r2 |
\break
  a4 b4 cs4 d4_0 |
  e4 f4 g4 a4 |
  bf4 c4 d4 e4 |
  f4 g4 a4 cs4 |
  f1\fermata |
  
}

\score {
  \new Staff \melody
  \layout { }
}

\score {
  \unfoldRepeats
  \new Staff \melody
  \midi { }
}
