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


variation_II  = { \mark \markup {\italic \fontsize #-3 "Variation 2"} }
variation_III = { \mark \markup {\italic \fontsize #-3 "Variation 3"}}

#(define-markup-command (variation layout props number) (number? )
   #:properties ((font-size -3))
   "Prints Variation with a number."
     (interpret-markup layout props
                       (markup
                                   #:fontsize fontsize
                                   #:italic number
                                   ))
                       )
     
  


folia_music = \relative c'' {
  \global
  \clef treble
%  \SectionI
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
  \bar "||" 
  \break
  \variation_II
  d8 f a f d f
  e a cs, e a, cs
  d f a f d f e g c g e g
  a f a c a f
  g c, e g a e
  f a, d f e d
  cs2 cs4
  \break
  d8 f a f d f
  e a cs, e a, cs
  d f a f d f e g c g e g
  a f a c a f
  g e g bf a( g)
  f( e) e4. d8
  d2.
  \break
  \variation_III

}




\score {
  
  <<
    %\new ChordNames \with {}  { \chordNames }
    \new Staff      \with {}  { \folia_music }
  >>
  \layout { }
  \midi {\tempo 4 = 140 }
}
