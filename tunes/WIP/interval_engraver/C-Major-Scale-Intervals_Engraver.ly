\version "2.24.4"
\language "english"

\include "interval_engraver.ly"

\header {
  title = "C Major Scale Intervals"
}

\paper {
  ragged-right = ##f
}

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \time 4/4
    \set-interval-position #'MIDDLE
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}


