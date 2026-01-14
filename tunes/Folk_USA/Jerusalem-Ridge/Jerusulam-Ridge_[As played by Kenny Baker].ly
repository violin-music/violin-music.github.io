\version "2.24.0"
\language "english"
\include "../../common/stylesheet_fiddle.ly"

\header {
  title = "Jerusalem Ridge"
  subtitle = "As performed by Kenny Baker"
  composer = "Bill Monroe"
  country = "USA"
  style = "bluegrass"
  video = "https://youtu.be/JWySDSagHGU"
  video = "https://youtu.be/Zc5Igo9O50&t"
}

\include "../../common/common-header.ily"

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  a1:m

}

melody = \relative c' {
  \global
  \repeat volta 2 {
  <a e'>4\downbow  r4  r2
  <a e'>4\downbow  r4  r2
  <a e'>4\downbow  r4  <a e'>4\downbow r4 
  <a e'>4\downbow  r4  <a e'>4\downbow r4 
  }
  \alternative {
    { <a e'>4\downbow  r4  r2}
    { <a e'>4\downbow  r4  r4 a4\downbow ~}
  }
  \break
  a8 b c d e8 r8 e8\upbow( g)
  e\downbow d c e d c e c\upbow(
  a8 b) c\downbow d e g a  g\upbow(
  e d) c\downbow e  d  c\upbow( a g)
  \break
  a8 b c d e8 r8 e8\upbow( g)
  e\downbow d c e d c e c\upbow(
  a8 b) c\downbow d e g a  g\upbow(
  e d) c\downbow e  d  c\upbow( a g)
  
  
}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
%  \midi { }
}
