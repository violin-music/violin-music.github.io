\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Violin Sonata in D minor"
  subtitle = "La Follia Op. 5 no. 12"
  composer = "A. Corelli (1653 - 1713)"
  country = "Italy"
  genre = "Classical"
}

% Define original key
originalKey  = d
originalMode = #minor

global = {
  \time 3/4
  \tempo "Adagio"
  \key \originalKey \originalMode
}

chordNames = \chordmode {
  \global  
  d2.:m   a:7    d:m     c     f     c     d2.:m   a:7
  d2.:m   a:7    d:m     c     f     c     d4:m   a2:7 d2.:m
}

variation =
#(define-music-function (number) (number?)
   #{ \mark \markup { 
     \fontsize #-3 
     \italic 
     #(string-append "Variation " (number->string number)) } 
   #})

folia_music = \relative d'' {
  \global
  d4 d4.e8
  cs2 cs4
  d4 d4.(  c!16 d)
  e2 e4
  f4 f4. g8
  e2 e4
  d8( cs) d4. e8
  cs2 cs4
  d4 d4. e8
  cs2 cs4
  d4 d4.( c!16 d)
  e2 e4
  f4 f4. g8
  e4. e8 f4
  d4 d4. cs8
  d2. 
  \bar "||" \break \variation #2
  d8 f a f d f
  e a cs, e a, cs
  d8 f a f d f e g c g e g
  a f a c a f
  g8 c, e g a e
  f8 a, d f e d
  cs2 cs4
  \break
  d8 f a f d f
  e a cs, e a, cs
  d f a f d f 
  e g c g e g
  a f a c a f
  g e g bf a( g)
  f( e) e4. d8
  d2.
  \bar "||" \break \variation #2

}

    


\score {
  
  <<
    %\new ChordNames \with {}  { \chordNames }
    \new Staff      \with {}  { \folia_music }
  >>
  \layout { }
  \midi {\tempo 4 = 140 }
}
