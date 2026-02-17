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

% part=x
%% score-only settings
	#(set-global-staff-size 18)  % or bigger paper for score?
\paper {
	ragged-bottom = ##t
}
% end

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
% part=1violin
	\context Staff = violinone <<
		\ViolinoPrimoSummerOne
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerOne
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerOne
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSummerOne
		\VioloncelloSummerOne
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 150 8)
      }
    }


% end
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
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerTwo
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerTwo
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerTwo
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\VioloncelloSummerTwo
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 45 4)
      }
    }


% end
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
% part=1violin
	\context Staff = violinone <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Primo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoPrimoSummerThree
	>>
% end
% part=2violin
	\context Staff = violintwo <<
		\set Staff.instrumentName = \markup { \column { "Violino" "Secondo" } }
		\set Staff.midiInstrument = "violin"
		\ViolinoSecondoSummerThree
	>>
% end
% part=viola
	\context Staff = "viola" <<
		\set Staff.instrumentName = \markup { \column { "Alto" "Viola" } }
		\set Staff.midiInstrument = "viola"
		\AltoViolaSummerThree
	>>
% end
% part=cello
	\context Staff = "cello" <<
		\set Staff.instrumentName = \markup { \column { "Organo e" "Violoncello" } }
		\set Staff.midiInstrument = "cello"
		\FiguredBassSummerThree
		\VioloncelloSummerThree
	>>
% end
>>
% part=x
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 150 4)
      }
    }


% end
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

