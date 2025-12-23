\version "2.24.4"
\language "english"

#(ly:set-option 'included-as-part #t)
\include "Brahms-Hungarian-Dance-4.ily"

\header {
  title = "Hungarian Dance #4"
  subtitle = "Key: D minor"
  composer = "Johannes Brahms"
  country = "Germany"
  genre = "Classical"
  style = "Hungarian Dance"
}

\include "../../common/common-header.ily"

targetKey = a

\score {
  <<
    \new ChordNames { \transpose fs \targetKey \chordNames }
    \new Staff {
      \transpose fs \targetKey \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 120 }
}