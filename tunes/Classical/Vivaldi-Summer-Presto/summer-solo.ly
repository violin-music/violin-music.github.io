\version "2.24.0"
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
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerOne
		\SonnetSummerOne
	>>
% end
>>
  \layout {
% part=solo
    \context {
        \Score
        \remove Mark_engraver
    }
% end
  }

	\header { piece = "Allegro non Molto" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerTwo
		\SonnetSummerTwo
	>>
% end
>>
  \layout {
% part=solo
    \context {
        \Score
        \remove Mark_engraver
    }
% end
  }
	\header { piece = "Adagio" }
}

\score {<<
	\set Score.skipBars = ##t
% part=solo
	\new Staff = "solo" 
	\with { \consists Mark_engraver }
	<<
		\set Staff.instrumentName = \markup { \column { "Violino" "Principale" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrincipaleSummerThree
		\SonnetSummerThree
	>>
% end
>>
  \layout {
% part=solo
    \context {
        \Score
        \remove Mark_engraver
    }
% end
  }
	\header { piece = "Presto" }
}

