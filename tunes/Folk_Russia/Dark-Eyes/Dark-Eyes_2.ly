\version "2.24.4"
\language "english"
\include "../../common/violin-functions.ly"
\include "../../common/common-header.ily"

%% 
\layout {
    indent = 0\in
}

\header {
  title = "Black Eyes"
  source = ""
  composer = "Russian Folk Song"
  enteredby = "Marc"
  style = "folk song"
  country = "Russia"
  copyright = "Public Domain"
  tag = ""
}

Violin = \relative a' {
  \set Staff.midiInstrument = "violin"
  \tempo 4 = 120

    \key d \minor
    \time 3/4
    
  | r4 gs a 
  | bf4.( a8) a4
  | r4 gs a4
  | bf4.( a8) a4
  | r4 \slide #5 a4-0  d
\break 
  | d4. cs8 cs4 
  | r4 e-2 f
  | e4. d8 d4
  | r4 f g
\break
  | f4. e8 bf4
  | r4  e f 
  | e4. d8 a4
  | r4 gs a 
\break
  | bf4.( a8) a4
  | r4 \slide #5 cs, e
  | d2 r4
     
}

\score {
   \new Staff { \time 2/4 \Violin  }
%    \new Staff { \looksSlower {\time 4/4 \Violin  }}
	\midi {}
}


