\version "2.26.0"
\language "english"

% Root–b3rd–5th–octave minor arpeggios through all 12 keys, ascending the
% circle of fifths (A E B F# C# G# Eb Bb F C G D). Violin-friendly octaves;
% one bar per key for per-bar drone changes.

\header {
  title = "Minor Arpeggios — Circle of Fifths"
  tagline = ##f
}

\paper {
  page-breaking = #ly:one-page-breaking
}

chordNames = \chordmode {
  a1:m e:m b:m fs:m cs:m gs:m ef:m bf:m f:m c:m g:m d:m
}

melody = {
  \time 4/4
  \tempo 4 = 60
  a4 c' e' a'    | e'4 g' b' e''  | b4 d' fs' b'   | fs'4 a' cs'' fs'' |
  cs'4 e' gs' cs'' | gs4 b ds' gs' | ef'4 gf' bf' ef'' | bf4 df' f' bf' |
  f'4 af' c'' f'' | c'4 ef' g' c'' | g4 bf d' g'    | d'4 f' a' d''  |
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
