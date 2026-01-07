\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Historia de Un Amor"
  composer = "Carlos Almarán"
  
}

global = {
  \time 2/2
  \key bf \major
  %\tempo 4=100
}

chordNames = \chordmode {
  \global
  
  
}

violin_music = \relative c'' {
  \global

  

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
