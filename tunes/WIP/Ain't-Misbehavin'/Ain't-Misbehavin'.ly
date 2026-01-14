
% Ain't-Misbehavin'.ly
\version "2.24"
\language "english"
\include "../../common/bars-per-line-engraver.ly"


\header {
  title =  "Ain't-Misbehavin'"
  subtitle =  "As played by Stéphane Grappelli"
  composer =  "Fats Waller"
  country = "USA"
  genre = "Jazz"
  subgenre = "Gypsy Jazz"
  video = "https://www.youtube.com/watch?v=Ipm1-Vif13A"
}

\include "../../common/common-header.ily"

chordNames = \chordmode {

}

violin_music = \relative c'' {
  \key f \major
  \time 4/4
  \tempo "Moderato"
  \set Staff.midiInstrument = "violin"

r1 r1 r1 r1
}

\score {
  <<
    \new ChordNames {
      \chordNames
    }
    \new Staff {
      \violin_music
    }
  >>
  \midi { }
  \layout {
    \context {
      \Score
      \override SeparationItem.padding = #0.99
    }
  }
}

