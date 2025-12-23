\version "2.24.4"
\language "english"

#(ly:set-option 'included-as-part #t)
\include "Brahms-Hungarian-Dance-4.ily"

\header {
  title = "Hungarian Dance #4"
  subtitle = "Key: B minor"
  composer = "Johannes Brahms"
  country = "Germany"
  genre = "Classical"
  style = "Hungarian Dance"
}

\include "../../common/common-header.ily"

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { \tempo 4 = 120 }
}
