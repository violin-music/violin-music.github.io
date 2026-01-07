\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/stylesheet_fiddle.ly"

\header {
  title = "Love Story"
  composer = "Francis Lai"
  subtitle = "From the Motion Picture \"Love Story\""
  country = "France"
  genre = "Soundtrack"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  a1:m  a1:m  e1:7  e1:7
  a1:m  f1    e1:7  e1:7
  a1:m  
}

melody = \relative c'' {
  \global
  c'8 e,8 e8 c' c2 
  r8 e,8 e8 c' c8 e, f e 
  d8 d d b' b2
  r8 d,8 d8 b' b8 d, e d
  \break
  c8 c c a' a2
  r8 c,8 c8 a' a8 c, d c 
  b8 b b gs' gs2
  r4 a b f
  e1
}

words = \lyricmode {
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
