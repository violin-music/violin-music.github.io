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
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerOne
	>>
% end
>>
  \layout {
  }

	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Presto" }
}

