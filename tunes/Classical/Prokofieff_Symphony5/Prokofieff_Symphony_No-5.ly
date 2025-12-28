\version "2.19.37"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Symphony No. 5"
  subtitle = "Excerpt"
  composer = "Sergei Prokofiev (1891-1953)"
  country = "Russia"
  style = "classical"
  key = "Dm"
}

global = {
  \time 4/4
  \tempo 4=200
}

chordNames = \chordmode {
  \global
  d1:m d1:m  d1:m  a1:7

}

melody = \relative c'' {
  \global
  r1 r1
  r8 bf_3 a gs bf a d a
  e' a, cs e a2
  \break
  r8 a8 af g c4 a4
  f8. c16 c8 8 8 8 8 c16 d16
  b!4 bf16[ r b c] a4 af4
  g8. c,16 8 8  8 8 8 8
  \break
  c8 e, c' e, c' e, c' e,
  c'8 e, bf' e, af e g e
  f2 r2
  r8 df'( c b)  d( c) f( df)
  g8 c, e g c2
  r8 c( b bf) ef4 c4
  af8. ef16 ef8 8  8 8 8 8

}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
