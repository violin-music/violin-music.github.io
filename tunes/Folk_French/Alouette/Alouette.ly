\version "2.13.54"
\include "english.ly"
\header {
	title = "Alouette"
	composer = "Traditional"
	country = "Canada"
	genre = "Folk"
    copyright = \markup \fontsize #-5 {... }
	tagline = ""
	arranger = "arr. Marc Mouries"
	opus = \markup {
     \with-url #"http://www.mouries.net/" { \fontsize #-5 {\italic {http://www.mouries.net }}}
  }
}

\include "../../common/common-header.ily"


theChords = \chordmode{
 f1 c2:7 f2 
 f1 c2:7 f2 
 f1 c2:7 f2 
 c1:7 c1:7
 r1 
 f1 c2:7 f2 
}

alouette = { | f4.-1( g8) a4 a4 | g8-.\upbow( f8-. g8-. a8-.)  f4 c4 | f4.( g8) a4 a4 | g8-.\upbow( f8-. g8-. a8-.)  f4 r4}

melody =  {
    %\set Score.defaultBarType = "empty" 
	\relative f'' { 
	\alouette
	| f8-1 f f f f a^\markup {\fontsize #-2 {"-1"}} c4
	| c8-.\upbow( d-. c-. bf-. a-. g-.) f4
	| c'8 c c4 c,8 c c4
	| c'8 c c4 c,8 c c4
	| c'4( bf a g )
	\alouette
	f4 c8 f4 g a c d c\glissando f2 s2
    s1 s1 s1 s1
    \ottava #1
    f4.( g8) a4 a4 
    \ottava #0
    } 
}

\score {
    <<
	\new ChordNames \with { midiInstrument = "orchestral strings" }
    \chordmode {
		\theChords 
		%\theChords
	} 
	\new Staff {
	    \key f \major
		\time 4/4

		\set Staff.midiInstrument = #"violin"
		\melody
		%\transpose c c' {\melody}
	}
    >>
	\layout {
	}
	\midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 180 4)
       }
    }
}