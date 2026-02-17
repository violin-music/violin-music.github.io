\version "2.24.0"
\include "summer_mvt-3_solo.ily"
\include "summer-sonnet.ily"
\include "summer-header.ily"

\header {
  title = "Summer (Solo Violin)"
  piece = "3. Presto"
  composer = "Antonio Vivaldi (1678-1741)"
  opus = "Op. 8, No. 2"
  style = "Baroque"
  country = "Italy"
  tags = "presto"
}

\score {
  <<
    %\set Score.skipBars = ##t
    \new Staff = "solo"
    \with { \consists Mark_engraver }
    <<
      \set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
      \set Staff.midiInstrument = "violin"
      \ViolinoPrincipaleSummerThree
     %\SonnetSummerThree
    >>
  >>
  \layout {
    \context {
      \Score
      %\remove Mark_engraver
    }
  }
}
