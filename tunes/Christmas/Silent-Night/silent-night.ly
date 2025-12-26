\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"
\header {
  title = "Silent  Night"
  subtitle = "Stille  Nacht"
  composer = "Franz Gruber (1787-1863)"
  %copyright = "Public Domain"
}

melody = {
  \time 6/8  
  \key bf \major 
  \tempo 4. = 50
    f'8.( g'16) f'8 d'4. 
    f'8.( g'16) f'8 d'4. 
    c''4 c''8 a'4. 
    bf'4 bf'8 f'4. 
\break
    g'4 g'8 bf'8.( a'16) g'8 
    f'8. g'16 f'8 d'4. 
    g'4 g'8 bf'8. a'16 g'8 
    f'8. g'16 f'8 d'4. 
    \break
    c''4 c''8 ef''8. c''16 a'8 
    bf'4.( d'' )
    bf'8.( f'16) d'8 f'8. ef'16 c'8 
    bf4. ~ bf4 r8
    \bar "|."
}
alto = {
  {
    \key bf \major 
    d'8. ef'16 d'8 bf4. d'8. ef'16 d'8 bf4. ef'4 ef'8 c'4. d'4 d'8 d'4. ef'4 ef'8 g'8. f'16 ef'8 d'8. ef'16 d'8 bf4. ef'4 ef'8 g'8. f'16 ef'8 d'8. ef'16 d'8 bf4. ef'4 ef'8 a'8. ef'16 c'8 d'4. f' d'8. f'16 bf8 d'8. c'16 a8 bf2.
    \bar "|."
  }
}
tenor = {
  {
    \key bf \major 
    bf4 bf8 f4. bf4 bf8 f4. 
    a4 a8 f4. f4 f8 bf4. bf4 bf8 g8. a16 bf8 bf8. bf16 bf8 f4. bf4 bf8 g8. a16 bf8 bf8. bf16 bf8 f4. a4 a8 c'8. a16 f8 f4. bf bf4 f8 f8. f16 ef8 d2.
    \bar "|."
  }
}
bass = {
  {
    \key bf \major bf,4 bf,8 bf,4. bf,4 bf,8 bf,4. f4 f8 f4. bf,4 bf,8 bf,4. ef4 ef8 ef8. ef16 ef8 bf,8. bf,16 bf,8 bf,4. ef4 ef8 ef8. ef16 ef8 bf,8. bf,16 bf,8 bf,4. f4 f8 f8. f16 f8 bf,2 ( bf,4 ) f f8 f,8. f,16 f,8 bf,2.
    \bar "|."
  }
}



words = \lyricmode {
  Si -- lent night, ho -- ly night,
  all is calm, all is bright,
  'Round yon Vir- gin Mo- ther and Child,
  ho- ly in- fant so ten- der and mild,
  Sleep in hea- ven- ly peace, __ 
  Sleep in hea- ven- ly peace. __
}

\score {
  <<
   % \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}


% \score {
%   \context GrandStaff <<
%     \context Staff = upper <<
%       \set Staff.printPartCombineTexts = ##f
%       \partCombine
%       {   \accidentalStyle modern-cautionary \melody }
%       { \alto}
%     >>
%     \context Staff = lower <<
%       \set Staff.printPartCombineTexts = ##f
%       \clef bass
%       \partCombine { \accidentalStyle modern-cautionary \tenor  }
%       { \bass }
%     >>
%   >>
%   \midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) } }
%   \layout {
%     \context {
%       \Score
%       % defaults
%       % (shortest-duration-space . 2.0)
%       % (spacing-increment . 1.2)
%       % (base-shortest-duration . ,(ly:make-moment 1/8))
%       % tighter spacing
%       \override SpacingSpanner.shortest-duration-space = #2.8
%       \override SpacingSpanner.spacing-increment = #0.6
%       \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
%       \remove "Bar_number_engraver"
%     }
%     \context {
%       \Staff
%       \override VerticalAxisGroup.minimum-Y-extent = #'(-1 . 1)
%     }
%   }
% }
