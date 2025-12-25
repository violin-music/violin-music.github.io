\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Style Musette"
  subtitle = "Valse"
  composer = "André Verchuren"
  tagline = ##f
}

% ---------- Global helpers ----------
segnoMark = \mark \markup { \musicglyph #"scripts.segno" }
fineMark  = \mark \markup { \bold "FIN" }
trioMark  = \mark \markup { \musicglyph #"scripts.coda" \hspace #1 \bold "TRIO" }

globalA = {
  \time 3/4
  \key d \minor
  \partial 4
}

globalTrio = {
  \time 3/4
  \key d \major
  \partial 4
}

chordsA = \chordmode {
  \globalA
  s4

  % From the first line: Dm | A7 | Dm | F#dim
  d2.:m
  a2.:7
  d2.:m
  fs2.:dim

  % Next visible sequence: Gm | D7 | Gm | A7
  g2.:m
  d2.:7
  g2.:m
  a2.:7

  % Then returns toward Dm (scan shows Dm again) + a passing dominant (E7 appears later)
  d2.:m
  % ...continue the rest of A by reading chord symbols measure-by-measure...
}

% Ending / cadence area around "FIN" shows DO7 (C7) -> FA (F)
chordsEnding = \chordmode {
  % Fill so bar counts match your melody once entered
  c2.:7
  f2.
}

% Trio area: starts with Dm feel then settles in D major (RE),
% and later shows A7, D7, G (SOL), Bm (MIm), Em (MIm?) etc on the scan.
chordsTrio = \chordmode {
  \globalTrio
  s4
  % Sketch based on visible symbols in Trio:
  d2.   % RE (D)
  % ...
  a2.:7 % LA7
  % ...
  d2.:7 % RE7
  g2.   % SOL
  b2.:m % MIm (on the scan it's "MIm"; in D major that's Bm)
  e2.:m % (if it appears as minor; verify from scan/ear)
  a2.:7
  d2.
}

% ---------- Melody placeholders ----------
% This keeps the spacing & measure structure stable while you enter notes.
melodyA = \relative c'' {
  \globalA
  \clef treble
  \segnoMark

  % pickup
  r4

  % 8 bars of placeholder (replace each r2. with real notes)
  r2. r2. r2. r2.
  r2. r2. r2. r2.

  % continue adding r2. blocks matching the printed measures
}

melodyEnding = \relative c'' {
  % Use this for the "FIN" section once you decide where the volta/ending is
  \fineMark
  r2. r2.
}

melodyTrio = \relative c'' {
  \globalTrio
  \clef treble
  \trioMark

  r4
  r2. r2. r2. r2.
  % continue…
}

% ---------- Score ----------
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordsA
      % \chordsEnding
      % \chordsTrio
    }

    \new Staff {
      \melodyA
      % \melodyEnding
      % \melodyTrio
    }
  >>
  \layout { }
}
