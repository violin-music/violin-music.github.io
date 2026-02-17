\version "2.24.0"
\include "summer_mvt-3.ily"
\include "summer_mvt-3_a.ily"
\include "summer_mvt-3_b.ily"
\include "summer_mvt-3_c.ily"
\include "summer_mvt-3_d.ily"
\include "summer_mvt-3_f.ily"
\include "summer-sonnet.ily"
\include "summer-header.ily"

\header {
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
      \SonnetSummerThree
    >>
  >>
  \layout {
    \context {
      \Score
      \remove Mark_engraver
    }
  }
  \header { piece = "Presto" }
}
