\version "2.24.4"
\language "english"

\include "../../common/bars-per-line-engraver.ly"
\include "../../common/common-header.ily"
\include "../../common/twoByTwoBeaming.ly"
\include "../../common/inclusion-logic.ily"

\include "./The-Mad-Lover_header.ily"


% Score 1: Original version in F minor

\header {
  subtitle = "5. Air - Violin"
}

      \layout {
        \context {
          \Voice
          \twoByTwoBeaming
        }
        \context {
          \Score
          %use the line below to insist on your layout
          %\override NonMusicalPaperColumn.line-break-permission = ##f
          \consists #(bars-per-line-engraver '(5 4 4 4 4 4  4  4 4  5))
        }
      }

global = {
  \time 3/4
  \key f \minor
}

chordNames = \chordmode {
  \global
  f2.:m  c2.:m df  c:m f:m c df
}

originalKey  = f
originalMode = #minor  % just # and the name

violin_music = \relative c'' {
  \global

  r8 c f af g f
  \repeat volta 2 {
    g   c,    c   g'    af  g
    g   bf,   bf  f'    g   f
    f   af,   g   f     g   e'
    f   c     f   af    g   f
    g   c,    c   af'   af  g
    g   bf,   bf  f'    g   f
    f   af,   g   f     g   e'
    f   af,   af  c     c   ef!
    ef  g,    g   bf    bf  df
    df  f,    f   af    af  c
    c   e,    e   g     g   bf
    bf  af    af  c     c   ef!
    ef  g,    g   bf    bf  df
    df  f,    f   af    af  c
    c   e,!   e   g     g   bf
    bf  af    af  f'    f   af,
    af  bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    c   df    df  g,    g   bf
    bf  af    af  f'    f   af,
    af  bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    c   df    df  g,    g   bf
    bf  af    af  c,    c   af'
    af  g     g   c,    c   g'
    g   f     f   c     c   f
    f   e     e   g     g   bf
    bf  af    af  c,    c   af'
    af  g     g   c,    c   g'
    g   f     f   c     c   f
    f   e     e   g     g   bf
    bf  a     a   f'    f   a,
    a   bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    df  c     bf  af    g   e'
    f   a,    a   f'    f   a,
    a   bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    df  c     bf  af    g   e'
  }
  \alternative {
    % First time
    {
      f c f af g f
    }
    % Second time
    {
      f2. \bar "|."    % Final barline
    }
  }
}


\scoreIfStandalone \violin_music
