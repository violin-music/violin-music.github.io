\version "2.24.4"
\language "english"

\include "../../common/common-header.ily"
%\include "../../common/stylesheet_fiddle.ly"

\header {
  title = "Tam Lin"
  composer = "Davey Arthur"
  country = "Ireland"
  genre = "Folk"
  style = "reel"
  meter = "reel"
  thesession = "https://thesession.org/tunes/248#setting248"
  video = "https://www.youtube.com/watch?v=a6AErsGiFqw"
}


global = {
  \time 4/4 
  \key d \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  d1:m  bf   c     d1:m  
  d1:m  bf   c     d1:m  
  
  d1:m  d1:m    c    c
}

melody =  {
\global
  \repeat volta 2 {
    a4     d'8    a8    f'8    a8     d'8    a8(    
    bf4)   d'8    bf8    f'8    bf8    d'8    bf8(
    c'4)   e'8    c'8    g'8    c'8    e'8    g'8    
    f'8[    e'8    \grace {f' e'} d'8   f'8]    e'8    d'8    c'8    g8(      
    \break
    a4)    d'8    a8    f'8
    a8     d'8    a8    bf4    d'8    bf8    f'8    bf8    d'8    bf8
    c'4    e'8    c'8    g'8    c'8    e'8    c'8    f'8    e'8
    d'8    c'8    a8    d'8    d'4
  }
  \break
  \repeat volta 2 {
    d''8    a'8    a'4
    ^"~"    f'8    a'8    d'8    a'8    d''8    a'8    a'4 ^"~"    f'8
    a'8    d'8    a'8    c''8    g'8    g'4 ^"~"    e'8    g'8    g'4
    ^"~"    c''8    g'8    g'4 ^"~"    c''8    d''8    e''8    c''8
    d''8    a'8    a'4 ^"~"    f'8    a'8    d'8    a'8  \bar "|"
    d''8    a'8    a'4 ^"~"    f'8    a'8    d'8    a8    bf4. ^"~"    a8
    bf8    c'8    d'8    e'8    f'8    d'8    e'8    c'8    a8    d'8
    d'4
  }
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
