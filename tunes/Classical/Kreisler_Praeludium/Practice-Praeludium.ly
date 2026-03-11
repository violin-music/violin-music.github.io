\version "2.24.4"
\language "english"

\header {
  title = "Practice Praeludium"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  c1
  
}

"measures_13-14" = \relative c'' {
  e2 fs b,-2 b'-1 e b-1 b,-2 fs'-3
  
}


\score {
  <<
    \new Staff { \"measures_13-14" }
  >>
  \layout { }
  \midi { }
}
