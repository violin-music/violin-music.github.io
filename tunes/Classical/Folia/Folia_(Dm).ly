\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\include "./Folia.ly"
% english.ly     c   d   e   f   g   a   b   -s/-sharp   -f/-flat

\header {
    title    = "Folia"
    subtitle = "aka Folies d'Espagne"
    composer = "Traditional"
    country  = "Portugal"
    style    = "Renaissance"
    enteredby = "Marc Mouries"
}


targetKey = d

chordNames = \chordmode {  
  % Dm    - A7  -  Dm   -  C  -  F  -  C  -  Dm   -  A7
    d2.:m   a:7    d:m     c     f     c     d2.:m   a:7
    d2.:m   a:7    d:m     c     f     c     d4:m   a2:7 d2.:m
  %  d2.:m   a:7    d:m    c   f   c     g:m/d    a
  %  d2.:m   a:7    d:m    c   f   a:7/e  d:m/a  d:m
}

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key \targetKey \originalMode
      \transpose \originalKey \targetKey \violin_music
    }
  >>
  \layout { }
  \midi { \tempo 4 = 100 }
}
