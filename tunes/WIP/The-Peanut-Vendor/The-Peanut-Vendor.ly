\version "2.24.4"
\language "english"

\header {
  title = "The Peanut Vendor"
  subtitle = "El Manisero"
  composer = "Moisés Simons"
  tagline = ""
}

global = {
  \time 4/4
  \key c \minor
}

chordNames = \chordmode {
  \global
  % Intro / vamp (common lead-sheet feel)
  c1:m
  g:7
  c:m
  g:7

  % A section (placeholder harmony — adjust to your chart)
  c1:m
  f:m
  g:7
  c:m

  % B / turnaround
  af1
  g:7
  c:m
  g:7
}

melody = \relative c' {
  \global
  \clef treble

  % --- Intro (rhythmic pickup feel; adjust as needed) ---
  r1 | r1 | r1 | r1 |

  % --- Theme (lead-sheet style placeholder) ---
  % If you share your preferred reference (recording/sheet), I can match it exactly.
  g8 g g4 bf8 bf bf4 |
  c8 c c4 d8 d ef4 |
  g,8 g g4 bf8 bf bf4 |
  c8 c c4 d8 d c4 |

  ef8 ef ef4 f8 f g4 |
  af8 af af4 g8 g f4 |
  g8 g g4 f8 f ef4 |
  d8 d d4 c2 |

  % Optional repeat / ending
  c1 \bar "|."
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordNames
    }
    \new Staff {
      \melody
    }
  >>
  \layout { }
  \midi { \tempo 4 = 112 }
}
