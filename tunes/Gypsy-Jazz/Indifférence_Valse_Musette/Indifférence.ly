\version "2.24.4"
\language "english"
\include "../../common/stylesheet_fiddle.ly"
\include "../../common/common-header.ily"

\header {
  title = "Indifférence"
  composer =  "T Murena & Colombo"
  country = ""
}

global = {
  \time 3/4
  \key c \major
  %\tempo 4=100
}

chordNames = \chordmode {
  \global
  e2.:m   e2.:m    e2.:m    e2.:m
  e2.:m   e2.:m    e2.:m    e2.:m
  e2.:m
  b2.:7   b2.:7    b2.:7    b2.:7
  b2.:7   b2.:7    b2.:7    b2.:7
  e2.:m   e2.:m    e2.:m    e2.:m
  e2.:m   e2.:m

  e2.:7    e2.:7
  a2.:m     a2.:m   a2.:m     a2.:m
  e2.:m
  e2.:m
  e2.:m
  b2.:7
  e2.:m

  b2.:7
  e2.:m
  % PART B

  b2.:7  b2.:7  e2.:m  e2.:m

}

melody = \relative c' {
  \global
  \repeat volta 2 {
    r2.
    r2.
    r8 b e g b d
    \tuplet 3/2 {c8( d c) } b2
    r8 b e g b d
    \tuplet 3/2 {c8 d c } b2
    r8 b,, e g b d
    \break
    c b e ds fs e
    g fs a g fs e
    \tuplet 3/2 {e8( fs e) } ds2
    r4 \acciaccatura {fs16 g gs} a8 g fs e
    \break
    fs4. e8 ds8 e
    ds4. c8 b8 c
    b2.
    r4 \acciaccatura {fs'16 g gs} a8 g fs g
    \break
    fs e ds e ds c
    b c b a g fs
    \tuplet 3/2 {fs8 g fs} e2
    r8 b e g b d
    \break
    \tuplet 3/2 {c8( d c) } b2
    r8 b e g b d
    \tuplet 3/2 {c8 d c } b2
    r8 b,, e g b e
    \break
    f!8 e d c b a
    gs a b c d e
    \tuplet 3/2 {d8 e d } c2
    r4 a4 b4
    \break
    c8 e a, c fs,4
    r8 a b c b a
    b e g, b e,4
    r8 e fs g fs e
    \break
    g2.
    \tuplet 3/2 {fs8 g fs} e4 ds
    e2. ~
  }
  \alternative {
    {e4 r8 g8 fs e}
    {e4 e ef }
  }
  \break
  \mark \default
  ds8 fs a c b as
  b   ds8 fs c' b as
  b     e g, b e, g
  b,8 e g b a g
  \break
  a8 c fs, a ds, fs
  b,8 ds fs a g fs
  e g b, e g b e4. g8 fs e
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}