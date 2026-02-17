\version "2.12.3"
\include "summer_mvt-1.ily"
\include "summer_mvt-1_a.ily"
\include "summer_mvt-1_b.ily"
\include "summer_mvt-1_c.ily"
\include "summer_mvt-1_d.ily"
\include "summer_mvt-1_f.ily"
\include "summer_mvt-2.ily"
\include "summer_mvt-2_a.ily"
\include "summer_mvt-2_b.ily"
\include "summer_mvt-2_c.ily"
\include "summer_mvt-2_d.ily"
\include "summer_mvt-3.ily"
\include "summer_mvt-3_a.ily"
\include "summer_mvt-3_b.ily"
\include "summer_mvt-3_c.ily"
\include "summer_mvt-3_d.ily"
\include "summer_mvt-3_f.ily"
\include "summer-sonnet.ily"
\include "summer-header.ily"


\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerOne
	>>
% end
>>
  \layout {
  }

	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Presto" }
}

