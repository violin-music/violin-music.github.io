\version "2.24"

\header {
  title = "Jig Rhythm"
}

global = {
  \time 6/8
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  c1
  
}

melody = \relative c'' {
  \global
  c8. c16 c8   c8. c16 c8 
  c8. c16 c8   c8. c16 c8 
}
  

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
