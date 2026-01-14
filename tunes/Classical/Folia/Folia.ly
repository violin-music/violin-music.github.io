\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/include-score-if-standalone.ily"

% english.ly     c   d   e   f   g   a   b   -s/-sharp   -f/-flat

\header {
    title    = "Folia"
    subtitle = "aka Folies d'Espagne"
    composer = "Traditional"
    country  = "Portugal"
    style    = "Renaissance"
    enteredby = "Marc Mouries"
}

% Define original key & mode
originalKey = g
originalMode = #minor



violin_music =  \relative g''
{
     \key g \minor
       \time 3/4 
    g < g,, d' bf' g' >4. a''8
  | < d,, a' fs' >2  fs'4
  | g < g,, d' bf' g' >4. f''16(  g )
  | <f, c' a'>2 a'4
  | bf <f, d' bf'>4.( c''8)
  | a2 a4
%\break

  | g8( fs) < g,, d' bf' g' >4.( a''8)
  | fs2  fs4
  | g < g,, d' bf' g' >4.( a''8)
  | g4( fs) fs
  | g < g,, d' bf' g' >4. f''16(  g )
  | <f, c' a'>2 a'4
  | bf <f, d' bf'>4.( c''8)
%\break
  | a4. a8 bf4
  | g4 g4. ( fs8)
  | g2.
}

\score {
  \new Staff {
  
    \violin_music
  }
  \layout {}
  \midi {}
}