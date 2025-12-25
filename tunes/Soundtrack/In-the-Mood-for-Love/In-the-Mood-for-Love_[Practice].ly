\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/violin-functions.ly"
\include "../../common/markups.ly"

\header {
  title = "Practice In the Mood for Love"
  subtitle = "Yumeji's Theme"
  composer = "Shigeru Umebayashi"
  country = "Japan"
  style = "soundtrack"
}

\score {
  \new Staff {
  \relative c'{

    \repeat volta 2 {
    g8 c-3 ef
    g8 c ef
    g8 c-3 ef-4
    c-3 g ef
    c g ef
    c
    }
    \repeat volta 2 {
    c-3 d-4 ef g af g ef d
    }
    \repeat volta 2 {
    c'-2 d ef g af g ef d
    }
    \break
% ^\markup "f -c : Presto, In the mood for Love"
    \repeat volta 2 {
    f,2-2  c2-1
    }
    \repeat volta 2 {
     bf8^"" ef f g bf c ef f
     g    f
    }
    \repeat volta 2 {
     g,,8^"" c d e g a c d e
    }

    g,, 8 a bf d f
    g  a bf d f
    g  a bf  a
    g f d  bf a
    g f d  bf a
  }
  }
}
\score {
      \new Staff {
     \relative  bf {
  \time 6/8
%g8 bf
%c8 d
bf8 d ef8  f  g bf
c8 d ef  f  g bf
c8 d ef

d c bf  g f ef
d c bf  g f ef
d c bf
}

      }
  \layout {indent=0}
}
