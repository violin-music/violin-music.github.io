\version "2.26.0"
\language "english"

% Root–3rd–5th–octave major arpeggios through all 12 keys, ascending the
% circle of fifths. Octaves chosen to stay in violin first-position range
% (nothing below G3). One bar per key so the Play-Along drone changes with
% every bar.

\header {
  title = "Major Arpeggios — Circle of Fifths"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  c1 g d a e b gf df af ef bf f
}

melody = {
  \time 4/4
  \tempo 4 = 60
  c'4 e' g' c''  | g4 b d' g'    | d'4 fs' a' d''  | a4 cs' e' a'   |
  e'4 gs' b' e'' | b4 ds' fs' b' | gf'4 bf' df'' gf'' | df'4 f' af' df'' |
  af4 c' ef' af' | ef'4 g' bf' ef'' | bf4 d' f' bf'  | f'4 a' c'' f'' |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
