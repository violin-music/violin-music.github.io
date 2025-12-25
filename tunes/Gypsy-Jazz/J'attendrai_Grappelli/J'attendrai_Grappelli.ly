\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "J'attendrai"
  composer = " Dino Olivieri"
  subtitle =  "As played by S. Grappelli"
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=120
}

chordNames = \chordmode {
  \global
  s1
  c1 c1 c1 b1:7
  c1 c1:dim7 d1:m7 a1:7
  d1:m
  d1:m
  d1:m
  d1:m

  g1:7 g1:7
  c2 cs:dim7 d2:m7  g2:7
  c1:7 c1:7
  f1 f1:m
  c1 c1 d1:m7
  g1:7
  c2 cs:dim7 d2:m7  g2:7

}

melody = \relative c'' {
  \global

  r1 r2 g'4\downbow ( b)
  c1 ~ c2  d2
  e2( \glissando d4) c8 d b2 a4 g
  %\break
  a4 a8 a ~ a2
  ~ a2 g4\downbow  ( b4)
  a1 r2 gs4-1_"III"\downbow (a-1)
  \break
  d1 ~
  d2 c4( d4^"bend")
  c2 b8c b4
  ~ b2  a4 g4
  % \break
  a4 a4
  a2 ~ a2

  g4( b4^"bend")
  a1
  r2 c4-1\downbow (d4)
  %\break
  e1 ~
  e4 e4.\downbow  ( ef8) d8 c
  e2.\upbow d8 c
  e2. d8 c
  %  \break
  g8\upbow^"restez" g8 g4 ~ g2 g2
  g4-2\downbow_"I" (b^"bend")
  a2 g4( b^"bend")
  a2  r4  ef'4\downbow (
  d8)  c a e-0
  %\break
  c'4^"bend"\upbow a8 e
  g8\downbow gs( a) ef( \glissando
  d) c( a4)
  g2 r2 r1
  \break
  \compressEmptyMeasures
  R1*8^"Guitar"
  \break
  r2^"Violin" r4. g'8 (
  fs8) g4  c8 ~ c c c8 c8
  c4 c8 c ~ c2
  d2\downbow
  e2 d8^"lift" c4. b2 a4.^"bend" g8(
  a8) g e c( b8) bf( a) r
  a'4\flageolet\upbow  r8 g   a g b4
  a2 \times 2/3 {g4 f e} e8 d4. d4. a'8
  \break
  d8 a f e d4 g8 a g f e d ~ d4 d
  c'2 b4 c4 b4 ~ b4. a8 g
  a4 a2 r2 g4 a8 g b4
  a8 g e4 a8 g e c  a g e4 e2
  \break
  r4 c''8 d e4 e2 r2 e4
  e8 d c4  e8 e4. d4 c4  e4. e8
  d8 c4. g8 g4. g2 r8 g8 fs g
  b4 bf  a4. g8 b2  a4. e'8
  d8 c8 a4   c4. g8  fs f e c a2





}



\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
