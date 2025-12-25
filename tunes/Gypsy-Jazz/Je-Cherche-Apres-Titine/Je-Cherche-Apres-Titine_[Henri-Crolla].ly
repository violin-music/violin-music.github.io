\version "2.19.21"
\language "english"
\include "../common/bars-per-line-engraver.ly"

\header {
  title    = "Je cherche après Titine"
  composer = "Léo Daniderff"
  country = "France"
  subtitle = "As played by Henri Crolla"
  tagline  = ##f   % Remove default LilyPond tagline
}

global = {
  % \key af \major
  \time 4/4
  \tempo "Allegro" 2 = 120
}


\layout {
  indent = 10\mm
}


chordNames = \chordmode {
  \global
  s1
  s1
  s1
  s1
  c\breve:m              c\breve:m                g\breve:7     c1:m      g1:7
  c\breve:m              c\breve:m                g\breve:7     c1:m      g1:7
  c1:m  f2.:m  g4   c1:m  f2.:m  g4     c\breve:m     f1:m      c1:m
}

melody = \relative c'' {
  \global
  r1
  r1
  r1
  r2 r4 r8 g8

  \mark \default

  \repeat volta 2 {
    | af4  g  fs  g    af
    %\appoggiatura { g16 af}
    % g ~ g r16  g
    g4 r4. g8
    | af4  g  c4.   g8    g4   f8 f4 r4  f8
    | g8 af16( g16)   f4  d   f    f   ef  r  c8 c
    | ef4.  d8  c4 b c2 r4  r8 g'8
  }
  \break
  \mark \default
  | g4\glissando af2 g4 c,2. r8 af'8
  | \grace{ g( af} g4) f ef d c2. g'4
  | g\glissando af2 g4 c2. r8 af!8
  | \grace{ g( af} g4) f ef d
  c2 r4  r8 c'8
  \mark \default
  | df4 c b!  c8 ef df8 c16 df c4 r4 r8 c8
  |

  df4 c f4. c8 c4 bf8 bf ~ bf4 r8 bf8
  c4 bf g bf bf af!4   r8  f8 af[
  bf!8]
  bf8 \glissando b bf af
  bf4 g8 f8~
  f2  r8 b!8 c ef8 df8 c16 df c4  b8 c ef4
  df \grace{c8 df} c4 r4 r8  c8

  df4 c f4. c8 c4 bf8 bf ~ bf4 r8 bf8
  c4 bf g bf bf af!4   r8  f8 af[
  bf!8]
  bf8 \glissando b bf af
  bf4 g8 f8~
  f2
  r4
  c'
  \mark \default
  df2. c4
  f,2.
  r8 df'!8
  | c4 bf af! g f2 f'8-3 e4 d8 cs2. c4 f2. r8 df!8
  | c4 bf af! g f2

  e8 \mark "Piano" g bf cs
  c af g f g f c4
  r1
  r r r
  r1 r r r

  s\breve^"Guitar" s\breve s\breve s\breve

}

\score {
  <<
    \new ChordNames  {
      \set chordChanges = ##f
      \chordNames
    }
    \new Voice = "one" {
      \set Staff.midiInstrument = #"acoustic guitar (steel)"
      \melody
    }
  >>
  \layout { indent = 0}
  \midi {}
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff {    \melody }
  >>
  \layout {
    indent = 0\mm
    \context {
      \Score
      %use the line below to insist on your layout
      %\override NonMusicalPaperColumn.line-break-permission = ##f
      \consists #(bars-per-line-engraver '(4))
    }
  }
}