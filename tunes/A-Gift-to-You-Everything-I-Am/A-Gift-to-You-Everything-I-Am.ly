\version "2.19.64"
\language "english"
\header {
  title = "A Gift to You (Everything I Am)"
}

global = {
  \time 4/4
  \key e \major
}

chordNames = \chordmode {
  \global
  e2     b2    cs2:m  b2  a2 b2  e2 b2  
  e2     b2    cs2:m  b2  a2 b2  e1
  b2     e2    gs  cs:m   a1   fs2 b2  

}

melody = \relative c' {
  \global
  r2 fs8 gs a b e,2
  fs8 gs a b e,2
  ds8 e  fs ds b2
  ds8 e  fs ds b4.
  gs'8 fs gs a b e,4.
  gs8 fs gs a b e,4.
  e8 ds e fs gs e4
  fs8 gs e4
  gs8 b b4 a gs
  e8 gs gs4 fs e4
  e8 ds cs4 e4 a2 
  r4 a8 gs 
  fs4 r8 gs e2. r4
}

melody_b = \relative c'' {
  \global
  r2 a8 b cs ds gs,2
  a8 b cs ds gs,2
  fs8 gs  a fs ds2
  fs8 gs  a fs ds4.
  b'8 a b cs ds gs,4.
  b8 a b cs ds gs,4.
  gs8 fs gs a b gs4
  a8 b gs4
  b8 ds ds4 cs b
  gs8 b b4 a gs4
  gs8 fs e4 gs4 cs2 
  r4 cs8 b 
  a4 r8 b gs2. r4
}

stanza_One = \lyricmode {
\set stanza = #"1. "

Ev -- ery -- thing I am (Ev -- ery -- thing I am)
Ev -- ery -- thing I'll be (Ev --ery -- thing I'll be)
I give it to You, Lord (I give it to You, Lord)
And do it thank -- ful -- ly (Thank -- ful -- ly)
  
  
Ev -- ery song I sing.
Ev -- ery praise I bring.
Ev -- ery -- thing I do, is a gift to You.  

}

stanza_Two = \lyricmode {
\set stanza = #"2. "

Ev -- ery -- thing I have (Ev -- ery -- thing I have)
All You've gi -- ven me (All You've gi -- ven me)
I give it to You, Lord (I give it to You, Lord)
And do it thank -- ful -- ly (Thank -- ful -- ly)
  
  
Ev -- ery song I sing.
Ev -- ery praise I bring.
Ev -- ery -- thing I do, is a gift to You.  

}
\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \new Staff {  \melody_b }
    \addlyrics {    
      \set fontSize = #-2 
       \stanza_One
    }
    \addlyrics {    
      \set fontSize = #-2 
       \stanza_Two
    }
  
    
  >>
  \layout { }
  \midi { }
}
