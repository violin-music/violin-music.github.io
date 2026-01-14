\version "2.24"
\language "english"
\include "../../common/common-header.ily"


\header {
  title = "Moscow Nights"
  subtitle = "aka Le Temps du Muguet"
  composer = "Vasily Solovyov-Sedoy"
  country = "Russia"
  genre = "Folk"
}


global = {
  \time 2/4
  \key a \minor
  \tempo 1=100
}

chordNames = \chordmode {
  \global

  a2:m    d2:m        e2:7    a2:m
  c2      f4   g4:7  c2      b4:7 e4:7
  a2:m    a2:m        d2:m    d2:m
  a2:m    d4:m7 e4:7  a2:m
}

melody = \relative c' {
  \global

  a8( c) e( c)
  d4 c8( b)
  e4 d4  a4. r8
  c8( e) g g

  a4 g8 f
  e2
  \break
  \repeat volta 2{
    fs4 gs4
    b8 a8 e4\upbow ~ e8 b4 a8
    e'8. d16 f4 ~
    \break
    f4 g8^"-3" f8
    e4 d8 c8 
    e4 d4
  }
  \alternative {
    {  a2   }
    {  a'2 ~ a}
  }
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout {indent =0 }
  \midi { \tempo 4 = 100}
}
