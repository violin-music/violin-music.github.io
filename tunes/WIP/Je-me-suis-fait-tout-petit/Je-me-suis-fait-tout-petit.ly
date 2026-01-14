\version "2.19.38"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Je Me Suis Fait Tout Petit"
  composer = "Georges Brassens"
}

global = {
  \time 4/4
  %\key d \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  b1:m
  cs2:7    fs2:7
  b2:m     a2:7

}

melody = \relative c' {
  \global
  b8 d fs b d4 as8 b 
  cs4 gs8 as8 ~ 8 fs8 gs! as!
  cs4 b a, a' g4. fs8 ~ fs2
  
}

words = \lyricmode {
  Je m'suis fait tout p'tit de -- vant une pou -- pee
  Qui ferm' les yeux quand on la cou -- che,
  
  
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
