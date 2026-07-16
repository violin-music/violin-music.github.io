\version "2.24"
\language "english"

\header {
  title = "Violin Scale & Arpegio in B"
  tagline = ""
}


music = \relative b'' {
  \time 2/4
  \key b \minor
  \clef treble

  % Descending scaleDescending')
  b8 a g16 fs  e ds c 
  b a g fs  e ds c 
  b2
  
  % b4 cs ds e  fs gs as b
  b8 ds fs 
  b8 ds fs 
  b8 ds fs 
}

bMajorTwoOctAsc_fromGString = \relative b {
  \key b \major

  % Ascending 2-octave B major starting on B on the G string (b)
  % Notes: B C# D# E F# G# A# B C# D# E F# G# A# B
  b4 cs ds e  fs gs as b
  cs ds e fs  gs as b2
}


\markup "???"

\score {
    \new Staff \with { instrumentName = "Violin" } {
      \music
    }
    
  \layout { }
  \midi { \tempo 4 = 88 }
}
