\version "2.19.21"
\language "english"
\header {
    title = "Je cherche après Titine"
    composer = "Léo Daniderff"
    tagline = ##f  % Remove default LilyPond tagline
}

\layout {
}

global = {
   % \key af \major
    \time 2/4
    \tempo "Allegro" 4 = 120
}

melody = \relative c' {
   \global
   \mark \default
   \partial 8
   g'8 \mf
  | af g fs g af g r g
  | af g c g g16 fs f r r8 f
  \break
  g f d f f ef r ef
    ef d b d
    c c'16 b bf8 a      | % 5
\break
        af4.-^  g8( c,) c'16 b bf8 a      | % 6
    af4.-^  g8( c) r r   c
\break
\mark \default
                   | % 1
    df c b c df c r c      | % 2
    df c f c c16 b bf r r8 bf      | % 3
    \break
    c bf g bf bf af r af      | % 4
    af g e g
    f f'16 e ef8 d      | % 5
    \break
    df4.-^  c8( f,) f'16 e ef8 d      | % 6
    df4.-^  c8( f) r f-^  r      | % 7

    \bar "|."
}% end of last bar in partorvoice




\score {
  \new Staff \with {
    midiInstrument = "violin"
  } \melody
  \layout { indent=0}
  \midi { }
}
