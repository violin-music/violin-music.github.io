\version "2.26.0"
\language "english"

% Minuet in G major (BWV Anh. 114), Christian Petzold — long attributed to
% J.S. Bach, from the Notebook for Anna Magdalena Bach. First 8-bar phrase.
% 3/4 time: exercises the Play-Along metronome's triple-meter accents.
% Public domain.

\header {
  title = "Minuet in G (Petzold, attr. Bach)"
  composer = "Christian Petzold"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  g2. g c g c g d d
}

melody = {
  \time 3/4
  \key g \major
  \tempo 4 = 104
  d''4 g'8 a' b' c''  | d''4 g' g'          | e''4 c''8 d'' e'' fs'' | g''4 g' g' |
  c''4 d''8 c'' b' a' | b'4 c''8 b' a' g'   | fs'4 g'8 a' b' g'      | a'2. |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
