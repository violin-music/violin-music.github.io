\version "2.24.1"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Improvisations sur les folies d'Espagne"
  subtitle = "Du Film Tous Les Matins du Monde"
  piece = "Transposed from D to G"
  composer = "Marin Marais"
  country = "France"
  genre = "Classical"
  transcriber = "MM"
}

\include "../../common/common-header.ily"

global = {
  \time 3/4
  \key c \major
}

chordNames = \chordmode {
  \global
  d2.:m  a2.   d2.:m   c2. 
  f2.    c2.   d2.:m   a2.

  d2.:m  a2.   d2.:m   c2. 
  f2.    c2.   d2.:m   a2.

  d2.:m  a2.   d2.:m   c2. 
  f2.    c2.   d2.:m   a2.
}

melody = \relative c'' {
  \global
  d4 << a,4. f' d'>> d8
  << a,4. e' cs'>> cs8 cs4
  d4 << a,4. f' d'>> d8 
  << c,4. g' e'>> e8 e4 
  f4 << c,4. a' f'>> f8
  << c,4. g' e'>> e8 e4 
    d4 << a,4. f' d'>> d8
  << a,2. e' cs'>> 
\break 
d8  a  f  d  a  d'
cs8 a  e  cs a  cs'
d8  a  f  d  a  d'
e8  c  g  e  c  e'
f8  c  a  f  c  f'
e8  c  g  e  c  e'
d8  a  f  d  a  d'
cs8 a  e  cs a  cs'
\break


d 8  a'  f  d   a'  f 
cs8  a'  e  cs  a'  e 
d 8  a'  f  d   a'  f 
e 8  c'  g  e   c'  g 
f 8  c'  a  f   c'  a
e 8  c'  g  e   c'  g 
d 8  a'  f  d   a'  f 
cs8  a'  e  cs  a'  e 
}

\score {
  <<
    \new ChordNames  { \chordNames }
    \new Staff       { \melody     }
  >>
  \layout { }
  \midi { }
}

\score {
  <<
    \new ChordNames  { \transpose d g \chordNames }
    \new Staff       { \transpose d g \melody     }
  >>
  \layout { }
  \midi { }
}
