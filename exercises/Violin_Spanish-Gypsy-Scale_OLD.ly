\version "2.24"
\language "english"
\paper {
  page-breaking = #ly:one-page-breaking
}
\header {
  title = "Spanish Gypsy: Scale & Arpeggio"
  tagline = ""
}


\markup "The music below uses the B Phrygian Dominant = 5th mode of E harmonic minor (E F# G A B C D#)"

global = {
  \time 2/4
  \clef treble
  \tempo 4 = 88
}



music = \relative b'' {
  \time 2/4
  \key b \minor
  \clef treble
  % Descending scale
  b4 a g8 fs  e ds c 
  b a g fs  e ds c 
  
  
  % b4 cs ds e  fs gs as b
  b2 ds4 fs 
  b4 ds fs 
  b4 ds fs b2
}


\score {
    \new Staff \with { instrumentName = "Violin" } {
      \music
    }
    
  \layout { }
  \midi { \tempo 4 = 88 }
}





scaleBPhrygianDominantDesc = \relative b'' {
  \key e \minor
  \mark \markup \box "Scale: B Phrygian Dominant (descending)"

  % One-octave descending: B A G F# | E D# C B
  b4 a g fs | e ds c b |
  % Repeat once (as you did)
  b4 a g fs | e ds c b |
  b1 \bar "||"
  \break
}

arpeggioBMajor = \relative b {
  \key e \minor

  \mark \markup \box "Arpeggio: B major (B–D#–F#)"
  % A clean, violin-friendly two-octave-style pattern
  b2 ds4 fs 
  b4 ds fs 
  b4 ds fs b2 \bar "|."
}

music = {

}

\markup \vspace #1
\markup {
  \column {
    \line { "Scale notes (ascending) are:" \concat { "B " "C " "D# " "E " "F# " "G " "A " "B" } }
    \line { "This is commonly called" \italic "Phrygian Dominant" "and is the 5th mode of E harmonic minor." }
  }
}

\score {
 
  \new Staff \with { instrumentName = "Violin" } { 
  \global   
    \scaleBPhrygianDominantDesc
    \arpeggioBMajor
  }
  \layout { }
  \midi { }
}
