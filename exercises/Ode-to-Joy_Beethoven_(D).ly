\version "2.26.0"
\language "english"

% "Ode to Joy" theme from Beethoven's 9th Symphony, in D major (violin
% first-position friendly). First 8-bar phrase; the final bar has a mid-bar
% chord change (A → D), exercising the Play-Along drone's offbeat scheduling.
% Public domain.

\header {
  title = "Ode to Joy (Beethoven)"
  composer = "Ludwig van Beethoven"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  d1 a d a d a d a2 d2
}

melody = {
  \time 4/4
  \key d \major
  \tempo 4 = 100
  fs'4 fs' g' a'  | a' g' fs' e'  | d' d' e' fs'  | fs'4. e'8 e'2 |
  fs'4 fs' g' a'  | a' g' fs' e'  | d' d' e' fs'  | e'4. d'8 d'2  |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
