\version "2.24"
\language "english"
\include "./Tarantella-Napoletana.ly"

targetKey = d

\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey \chordNames }
    \new Staff {
      \key \targetKey \originalMode
      \transpose \originalKey \targetKey' \melody
    }
  >>
  \layout { }
  \midi {  }
}
