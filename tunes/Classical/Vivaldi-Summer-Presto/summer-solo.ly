\version "2.24.0"
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

