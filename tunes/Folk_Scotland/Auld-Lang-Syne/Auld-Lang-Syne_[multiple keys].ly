\version "2.24.0"
\language "english"

\header {
  title = "Auld Lang Syne"
  composer = "Traditional"
  country = "Scotland"
  genre = "Folk"
}

\include "../../common/common-header.ily"

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
    \partial 4 s4
     f1       c1     f1     bf
}

melody = \relative c' {
  \partial 4 c4^\p |
  f4. f8 f4 a
  g4. f8 g4 a8(g)
  f4. f8 a4 c |
  d2.  d4
  \break
  c4. a8 a4 f |

  g4. f8 g4 a8(g) |
  f4.( d8) d4( c) |
  f2.  d'4
  \break
  c4.( a8) a4( f)
  g4. f8 g4 d'
  c4.( a8) a4( c)
  d2.  d4
  \break
  c4. a8 a4 f |
  g4. f8 g4 a8(g) |
  f4.( d8) d4( c) |
  f2. r4 \bar "|."
}

words = \lyricmode {


}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
\layout {}}

\score {
  <<
    \new ChordNames {\transpose f g \chordNames}
    \new Staff      {\transpose f g \melody }
    \addlyrics { \words }
  >>
\layout {}}
\score {
  <<
    \new ChordNames {\transpose f a \chordNames}
    \new Staff      {\transpose f a \melody }
    \addlyrics { \words }
  >>
  \layout {}
}
\score {
  <<
    \new ChordNames {\transpose f bf \chordNames}
    \new Staff      {\transpose f bf \melody }
    \addlyrics { \words }
  >>
\layout {}}