\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Sonate en La Majeur"
  subtitle = "IV Mvt"
  composer = "César Franck (1822–1890)"
  country = "France"
  genre = "Classical"
  style = "Romantic"
}

global = {
  \time 4/4
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  c1

}

melody = \relative c'' {
  \global
  \key a \major


<<
  { \partial 4 r4 r2 r4 b'4-2\downbow (  }
  \new CueVoice {
    \partial 4 b,4^"Piano" cs
    a gs
  }
>>

  cs' a gs-4 fs)
  e2.-2( cs8_1^1 d_1^2)
  e4-2( fs8 gs a4-4\flageolet gs8-4 fs)
  e2. ~ e4\tenuto\upbow
  b'( cs d cs8 d) b2. ~ b4-1\tenuto\upbow
 \break
  d( b e d8 cs)
  b2.( a'4-4)
  gs4-4( fs) e2\upbow ~
  e4 d-4\downbow( cs b8 cs)
  a8-1( cs-1 d e fs4 e8 d)
  cs2 r4 fs4\upbow
  es4( cs-3 d b-2)
\break
  gs2.\< ( fs'4-4)\! \>
  es4( cs)  b8( a gs fs \!)
  gs2. ( cs4)
  cs4 ( gs) gs4( a8 cs)
  e2.\upbow cs4 ~
  cs8 gs( a cs  e-3 fs) e fs
  e2 ~ (e8  d-4 cs b)
  
  cs4( a gs fs)
  e2. ( cs8 d) 
  e4 (fs8 gs)
  a4 ( gs8 gs) 
  e2 r4 e4
  b'4( cs)  d4( cs8 d) 
   b2. b4-1
   d4( b)  e4 (d8 cs)
   
   b2.-1 fs'4-4^"ext"\accent
   d-2-> cs-3-> b a
   gs-1 a b fs'-4
   \break
   d-2 cs8-3^"III" d b4 a
   gs a b fs'
   e2. d4 ~ 
   d4 cs8-1 e-1 a2-3 ~
   a4 fs e cs8 b
   a8 a,( cs d ds e fs e)
   e (d fs a cs d e d)
   
}

words = \lyricmode {


}

\score {
    \new Staff { \melody }
  \layout { }
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.19.49  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32
%}
