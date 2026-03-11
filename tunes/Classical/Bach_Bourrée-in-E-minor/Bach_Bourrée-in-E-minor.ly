\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Bourrée in E minor"
  subtitle = "from Lute Suite No. 1, BWV 996"
  composer = "Johann Sebastian Bach (1685–1750)"
  country = "Germany"
  genre = "Classical"
  style = "Baroque"
}


upper = \relative a' {
  \key d \minor
  \time 4/4

  \repeat volta 2 {
    \partial 4 d8 e8^\mf |

    f4 e8 d cs4 d8 e |
    a,4 b8 cs d4 c8 bf |
    a4 g8 f e4 f8 g |
    a8 g f e d4 d'8 e |
    \break

    f4 e8 d cs4 d8 e |
    a,4 b8 cs d4 c8 bf |
    a4 g8 f e4. f8 |
    <c f>2.
  }
}

% NOTE: your screenshot resolution makes the exact LH pitches hard to read reliably.
% This is a simple harmonic LH that will *not* be guaranteed identical to your print.
lower = \relative e' {
  \key d \minor
  %\clef bass
  \time 4/4

  \repeat volta 2 {
    \partial 4 f8 e8 |
    d4 g a g |
    d a d a |
    f' a d a |
    d a d a |
    d a d a |
    d a d a |
    d a a,4. a8 |
    <d, d'>2.
  }
}

\score {
  \new PianoStaff <<
    \new Staff \upper
    \new Staff \lower
  >>
  \layout { }
  \midi { }
}