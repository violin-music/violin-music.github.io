\version "2.24.0"
\language "english"



\paper{paper-height = 6.4\cm}

\header {
  title = "The Britches Full Of Stitches"
  composer = "Traditional"
  country = "Ireland"
  genre = "Folk"
}

\include "../../common/common-header.ily"

melody = \relative c'  {
    \time 2/4 \key a \major
    \repeat volta 2 {a'8. b16 cs8 a b8 a cs8 a a8. b16 cs8 a b8 a fs8 e a8. b16 cs8 a b8 a cs8 e a,8. b16 a8 fs fs8 e e4}
    \repeat volta 2 {e'8. fs16 e8 cs b8 a b8 cs e8. fs16 e8 cs b8 a fs4 e'8. fs16 e8 cs b8 a b8 cs a8. b16 a8 fs fs8 e e4}
  }
  
chordNames = \chordmode {
   % \frenchChords
    \repeat volta 2 {a4 s4 s2 s2 g4 s4 a4 s4 s2 s2 d4 s4}
    \repeat volta 2 {a4 s4 s2 s2 g4 s4 a4 s4 s2 s2 d4 s4}
}
  
 
\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
%    \addlyrics { \words }
  >>
  \layout {indent = 0}
  \midi { }
}
