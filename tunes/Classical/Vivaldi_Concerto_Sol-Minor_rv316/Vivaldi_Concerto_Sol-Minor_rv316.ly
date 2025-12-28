
\version "2.19.29"
\include "english.ly"
% english.ly     c   d   e   f   g   a   b   -s/-sharp   -f/-flat

\header {
  title = "Concerto in Sol Minore"
  subtitle = "La Stravaganza - Concerto op.4 No.6 in G minor RV316a"
  piece = "1. Allegro"
  composer = "Antonio Vivaldi (1678-1741)"
  country = "Italy"
  style = "baroque"
  key = "Gm"
  date = "1720"
  maintainer = "Hajo Dezelski"
  maintainerEmail = "dl1sdz (at) gmail.com"
  footer = "Mutopia-2008/06/01-1429"
}

\include "../../common/common-header.ily"

ViolinoSolo =  	\relative g'' {
  \tempo 4=100
  \clef violin
  \key g \minor
  \time 2/4
  \set Staff.midiInstrument = #"violin"
  \override Score.BarNumber.break-visibility = #'#(#f #t #t)
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  g4\f d4        | bf'4. a8   | g fs g a | d,4. ef8 | d8( c) \stemDown bf( a) | bf g bf d |
  \slurDashed
  g8 a16 bf16 a8-.( g8-.) | fs2 | \break
  g4\p d4 | bf'4.( a8) | g fs g a | c,4. ef8 | d8( c) \stemDown bf( a) | bf g bf d | g8 a16 bf16 a8-.( g8-.) | fs2 | \break
  \slurSolid
  bf2\f( | bf8)( ef,) g( bf) | a2( | a8)( d,) f( a) | g2( | g8)( cs,) ef( g)
  \break
  | fs8 fs16 g  a8 ef
  | ef8 fs16 g  a8 d,
  | d8 fs16 g  a8 c,
  | c8 fs16 g  a8 c,
  | bf8 g'4 bf,8
  \break
  | c8 g'4 c,8
  | d8 g4 d8
  | ef g4 bf,8
  | a8 g' a, fs'
  | g4 r4
  \break
  % THEME - B part
  \slurDashed
  g4\p d4 | bf'4.( a8) | g fs g a | c,4. ef8 | d8( c) \stemDown bf( a) | bf g bf d | g8 a16 bf16 a8-.( g8-.) | fs2 | \break
  \slurSolid
  | g16 bf a bf  f a f g
  | ef8 ( g) bf4
  | a16 bf g a f g ef f
  | d8( f) a4

}


% The score definition

\score {
  \context Staff <<
    \set Staff.instrumentName = "Violino"
    {
      \ViolinoSolo
    }
  >>
  \layout { }
  \midi {
  }
}
