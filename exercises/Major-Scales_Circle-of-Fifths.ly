\version "2.26.0"
\language "english"

% One-octave major scales through all 12 keys, ascending the circle of
% fifths. Two bars per key (eighths up, eighths down), so the drone holds
% each key for two bars. Violin first-position range throughout.

\header {
  title = "Major Scales — Circle of Fifths"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  c1 c g g d d a a e e b b
  gf gf df df af af ef ef bf bf f f
}

melody = {
  \time 4/4
  \tempo 4 = 60
  c'8 d' e' f' g' a' b' c''       | c''8 b' a' g' f' e' d' c'      |
  g8 a b c' d' e' fs' g'          | g'8 fs' e' d' c' b a g         |
  d'8 e' fs' g' a' b' cs'' d''    | d''8 cs'' b' a' g' fs' e' d'   |
  a8 b cs' d' e' fs' gs' a'       | a'8 gs' fs' e' d' cs' b a      |
  e'8 fs' gs' a' b' cs'' ds'' e'' | e''8 ds'' cs'' b' a' gs' fs' e' |
  b8 cs' ds' e' fs' gs' as' b'    | b'8 as' gs' fs' e' ds' cs' b   |
  gf'8 af' bf' cf'' df'' ef'' f'' gf'' | gf''8 f'' ef'' df'' cf'' bf' af' gf' |
  df'8 ef' f' gf' af' bf' c'' df'' | df''8 c'' bf' af' gf' f' ef' df' |
  af8 bf c' df' ef' f' g' af'     | af'8 g' f' ef' df' c' bf af    |
  ef'8 f' g' af' bf' c'' d'' ef'' | ef''8 d'' c'' bf' af' g' f' ef' |
  bf8 c' d' ef' f' g' a' bf'      | bf'8 a' g' f' ef' d' c' bf     |
  f'8 g' a' bf' c'' d'' e'' f''   | f''8 e'' d'' c'' bf' a' g' f'  |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
