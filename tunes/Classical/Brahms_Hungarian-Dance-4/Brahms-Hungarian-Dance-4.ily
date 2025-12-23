\version "2.24.4"
\language "english"

% This file contains the shared music content for Hungarian Dance #4
% Include this file from key-specific versions

global = {
  \time 2/4
  \key b \minor
  %\tempo 4=100
}

chordNames = \chordmode {
  \global


}

melody = \relative c' {
  \global
  \partial 4. fs8[( g fs])
  <b d>2
  ~ <b d>8 fs8[( g fs])
  <cs e>2
  ~ <cs e>8  e8[( fs e])
  <as cs>2
  ~ <as cs>8 e8[( fs e])
  <as cs>2
  ~ <as cs>8 e8[( fs e])
  \break
  <b d>2
  ~ <b d>8 d[ cs b]
  fs'2
  ~ fs8 d8[ cs b]
  g'2
  ~ g8 g8[ fs e]
  d4 fs4
  cs4 fs4
  b,2
  \break
  r2 r2 r2 r2
}

% Conditional compilation: only generate \score if compiled standalone
% When included in another file with (ly:set-option 'included-as-part #t), skip the score

\header {
  title = "Hungarian Dance #4"
  composer = "Johannes Brahms"
  country = "Germany"
  genre = "Classical"
  style = "Hungarian Dance"
}

\include "../../common/common-header.ily"

% Only generate score block if not included as part
#(if (not (ly:get-option 'included-as-part))
  (add-score
    #{
      \score {
        <<
          \new ChordNames \chordNames
          \new Staff { \melody }
        >>
        \layout { }
        \midi { \tempo 4 = 120 }
      }
    #}))
