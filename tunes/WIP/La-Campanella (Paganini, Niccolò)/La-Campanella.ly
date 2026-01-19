\version "2.19.64"
\language "english"
\include "../../common/common-header.ily"


\header {
  title = "La Campanella"
  composer = "Niccolò Paganini"
}

global = {
  \time 6/8
  \key d \major
  %\tempo 4=100
}


melody = \relative c'' {
  \global
  \partial 4*8
  fs8 (  fs'\upbow ) fs-. e-.
  d-. d-. cs-. 
  \acciaccatura { b16 cs} b8-. as-. b-.
  \acciaccatura {as16 b} cs8( fs,) fs 
  \acciaccatura { g16 a}  g8 fs e
  d cs b   \acciaccatura {d16 e} d8 cs-. b-.
  fs4 fs'8 (  fs'\upbow ) fs-. e-.
  d-. d-. cs-. 
  \acciaccatura { b16 cs} b8-. as-. b-.
  \acciaccatura {as16 b} cs8( fs,) fs 
  \acciaccatura { g16 a}  g8 fs-. e-.
  fs8 b16 d fs8
  fs,8 as16 cs fs8
}


\score {
  <<
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
