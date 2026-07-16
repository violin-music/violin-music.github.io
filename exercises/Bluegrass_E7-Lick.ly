\version "2.24"
\language "english"

\header {
  title = "E7 Lick "
  tagline = ""
}

global = {
  \time 4/4
  \clef "treble_8"
}

melody =  \relative c {
  \global
\partial 8  b16( cs16)
  e   cs  e   fs 
  gs  b   cs  gs
  b   c   cs  e
  fs  cs  e   fs 
  gs  b   gs  g 
  fs  e   fs  ds
  e4
  r4
  \break

  % ------------------------------------------------------------------
  % Measure 2 — confirmed by you: continuation is on HIGH E string
  % TAB shows: 3/5 (slide), barline, then 0 | 0-3 | 0-3-4-0 ...
  % High E string frets -> pitches (written, treble_8):
  % 0 = e''   3 = g''   4 = gs''   5 = a''
  % ------------------------------------------------------------------
  g16\glissando a16
  \bar "|"

  e16
  e16 g16
  e16 g16 gs16 e16

  % The screenshot cuts off right after that last "-0".
  % If you share the next chunk, I’ll continue from here.
  \bar "|."
}

\score {
  \new Staff \melody
  \layout { }
}