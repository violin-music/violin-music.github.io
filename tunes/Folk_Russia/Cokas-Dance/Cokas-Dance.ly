\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/violin-functions.ly"

\paper { ragged-right = ##t }

\header {
  title = "Cokas Dance"
  subtitle = "Danse Causase"
  composer = "Traditional Russian"
  country = "Russia"
  genre = "Folk"
  style = "gypsy folk"
}
\score {
  \relative a'' {
    %\numericTimeSignature
     \override Staff.TimeSignature.style = #'numbered
     \time 4/4
     \key d \minor
      a8. a16 \tri { bf8( a gs) } a8. f16 d4 
      \tri { f8 g a } \tri { a8 g f } e8. g16 c,4 
      g'8. g16 \tri { a8( g f) } e8. g16 c,4
      
  }
  \layout { }
  \midi {}
}
