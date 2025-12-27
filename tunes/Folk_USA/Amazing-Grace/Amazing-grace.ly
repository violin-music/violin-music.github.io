\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "Amazing-grace.ily"

\header {
  title = "Amazing Grace"
  composer = "Traditional American"
  poet = "John Newton (lyrics)"
  country = "USA"
  style = "hymn"
  key = "G"
}

\score { 
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \changes
    }
    \context Staff = soprano <<
      \context Voice = soprano { 
        << \global 
           \melody >> }
      \addlyrics { \verse_i }
      \addlyrics { \verseii }
      \addlyrics { \verseiii }
      \addlyrics { \verseiv }
      \addlyrics { \versev }
    >>
  >>
}
