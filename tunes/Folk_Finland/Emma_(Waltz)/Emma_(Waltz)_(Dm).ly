\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/stylesheet_fiddle.ly"
\include "../../common/bars-per-line-engraver.ly"

\include "Emma_(Waltz)_music.ily"

\header {
  title    = "Emma's Waltz"
  subtitle = "As played by Sarah Comer"
  composer = "Traditional Finnish"
  country = "Finland"
  genre = "Folk"
  video = "https://www.youtube.com/watch?v=VuB9Zu-YOj8"
}
chordNames = \chordmode {
  \global
  d1:m
}

melody =  \relative c' {
  \time 3/4
  \key d \minor

  \partial 4. r8 d8 f
  \repeat volta 2 {
  | a4. bf8 a4
  | f4 d4 f4
  | a4. bf8 a4
  | f4 d4 f4
  \break
  | e2 e8 f
  | g4 f g
  | a4 r8 f8 \grace {e16 f16} e4
  | d2 d8 f
  }
  
  %==== B PART ====
  \repeat volta 2 {
  \break
  | d'4. d8 d4
  | d4 c \grace {d16 c16} bf4
  | a4. a8 a bf
  | a4  g4 f4
  \break
  | e2 e8 f
  | g4 f e
  | a4 f e
  | d8 e f g a r
  }
}
\score {
  <<
    %    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi {\tempo 4 = 120 }
}



% \score {
%   <<
%     \new Staff \with {  midiInstrument = "violin" }
%     \emmaMelody
%     \melody
%   >>
% 
%   \layout { }
%   \midi { \tempo 4 = 120 }
% }
