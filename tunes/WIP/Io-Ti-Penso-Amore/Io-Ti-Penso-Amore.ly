\version "2.24.4"

\header {
  title = "Io Ti Penso Amore"
  subtitle = "from the 2nd movement of Paganini 4th violin concerto"
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

melody = \relative c'' {
  \global
  c4 d e f
  
}

words = \lyricmode {
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
