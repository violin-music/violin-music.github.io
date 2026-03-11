\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Spring is Coming"
  composer = "Marc Mouries"
  country = "France"
  genre = "Original"
  date = "March 6, 2026"
}

global = {
  \time 4/4
  \key a \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global


}

melody = \relative c'' {
  \global
  fs4. e8 cs2
  fs4. e8 a,2
  fs'4. e8 cs2
  fs4. e8 a,4. b8
  \break
  cs4. b8 gs2
  cs4. b8 e,2
  cs'4. b8 gs2
  cs4. b8 e,4. fs8
  \break
  a 8 b8 cs8 b   a fs e cs
  a 8 cs fs a8   cs a fs cs
  fs8 a8 cs fs   cs fs a cs
  \break
  fs4. e8 cs2
  fs4. e8 a,2
  fs4. e8 cs2
  fs4. e8 a,4. b8



}

words = \lyricmode {


}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}
