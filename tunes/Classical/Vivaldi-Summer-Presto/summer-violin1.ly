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
% part=1violin
	\context Staff = violinone <<
		\ViolinoPrimoSummerOne
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
	>>
% end
>>
  \layout {
  }

	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerTwo
	>>
% end
>>
  \layout {
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerThree
	>>
% end
>>
  \layout {
  }
	\header { piece = "Presto" }
}

