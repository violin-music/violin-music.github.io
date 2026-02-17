\version "2.12.3"
\include "summer_mvt-1_solo.ily"
\include "summer_mvt-1_violin1.ily"
\include "summer_mvt-1_violin2.ily"
\include "summer_mvt-1_viola.ily"
\include "summer_mvt-1_cello.ily"
\include "summer_mvt-1_figuredbass.ily"
\include "summer_mvt-2_solo.ily"
\include "summer_mvt-2_violin1.ily"
\include "summer_mvt-2_violin2.ily"
\include "summer_mvt-2_viola.ily"
\include "summer_mvt-2_cello.ily"
\include "summer_mvt-3_solo.ily"
\include "summer_mvt-3_violin1.ily"
\include "summer_mvt-3_violin2.ily"
\include "summer_mvt-3_viola.ily"
\include "summer_mvt-3_cello.ily"
\include "summer_mvt-3_figuredbass.ily"
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

