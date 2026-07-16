\version "2.26.0"
\language "english"

% Dominant 7th arpeggios (root–3–5–b7–octave–b7–5–3, eighths) descending the
% circle of fourths — each chord resolves like a V7 into the next bar, the
% classic jazz/bluegrass workout. One bar per key; drone changes every bar.

\header {
  title = "Dominant 7th Arpeggios — Circle of Fourths"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  c1:7 f:7 bf:7 ef:7 af:7 df:7 gf:7 b:7 e:7 a:7 d:7 g:7
}

melody = {
  \time 4/4
  \tempo 4 = 60
  c'8 e' g' bf' c'' bf' g' e'      | f'8 a' c'' ef'' f'' ef'' c'' a' |
  bf8 d' f' af' bf' af' f' d'     | ef'8 g' bf' df'' ef'' df'' bf' g' |
  af8 c' ef' gf' af' gf' ef' c'   | df'8 f' af' cf'' df'' cf'' af' f' |
  gf'8 bf' df'' ff'' gf'' ff'' df'' bf' | b8 ds' fs' a' b' a' fs' ds' |
  e'8 gs' b' d'' e'' d'' b' gs'   | a8 cs' e' g' a' g' e' cs'      |
  d'8 fs' a' c'' d'' c'' a' fs'   | g8 b d' f' g' f' d' b          |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
