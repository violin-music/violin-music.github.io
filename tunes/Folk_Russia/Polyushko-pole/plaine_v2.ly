\version "2.19.7"
\language "english"
\include "../../common/common-header.ily"

\header {
  title     = "Russian Music - Polyushko Pole, Plaine, ma plaine(French) - The Cossack Patrol"

  composer  = "Composed in 1934 by Lev Knipper (1898-1974)"
  enteredby = "Marc"
  country = "Russia"
}
melody = \relative d'' {
  \set Staff.midiInstrument = #"violin"
  \key d \minor
  %% HERE
   f,2 d4 f e2 d2
}



\score {
   \new Staff { \time 2/4 \melody  }
   \layout {}
}
