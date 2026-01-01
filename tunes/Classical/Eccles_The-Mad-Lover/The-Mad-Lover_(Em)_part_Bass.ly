% Bass part for "The Mad Lover" by John Eccles
% This file can be:
%   1. Compiled standalone to produce a bass part PDF
%   2. Included in full scores (the \score block is skipped)

\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "The Mad Lover"
  subtitle = "5. Air - Bass"
  composer = "John Eccles (1668–1735)"
  country = "England"
  genre = "Classical"
}

global = {
  \time 3/4
  \key e \minor
}

bass_music = \relative e {
  \global
  % Bars 1–8
  e2. |
  \repeat volta 2{
  d2. | c2. | b2. | e2 e'4 | d2. | c2. | b2. |
  e,2 e'4 | d2. | c2. | b2. |
  e,2 e'4 | d2. | c2. | b2. |
  e,2 e4 | fs2 fs4 | g2 g4 | a4 b4 b,|
  e2 e4 | fs2 fs4 | g2 g4 |  a4 b4 b,|
  e2 e'4 | d2 d4 | c2 c4 |  b2 b4 |
  e,2 e'4 | d2 d4 | c2 c4 | b2 b4
  | e,2 e4 | fs2 fs4 | gs2 gs4 | a4 b4 b,
  | e2  e4 | fs2 fs4 | gs2 gs4 | a4 b4 b,
  }
  \alternative {
    { e2 e'4 }           % first ending
    { e2. \bar "|." }    % second ending
  }
}



% Conditional compilation: only generate \score if compiled standalone
% When included in another file with (ly:set-option 'included-as-part #t), skip the score


% Only generate score block if not included as part
#(if (not (ly:get-option 'included-as-part))
  (add-score
    #{
      \score {
        \new Staff \with { instrumentName = "Bass" }
        {
          \clef bass
          \bass_music
        }
        \layout { }
        \midi { \tempo 4 = 100 }
      }
    #}))
