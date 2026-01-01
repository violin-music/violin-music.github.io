\version "2.24.4"
\language "english"

\include "../../common/twoByTwoBeaming.ly"
\include "../../common/bars-per-line-engraver.ly"
\include "../../common/common-header.ily"

\header {
  title = "The Mad Lover"
  subtitle = "5. Air - Violin"
  composer = "John Eccles (1668 – 1735)"
  country = "England"
  genre = "Classical"
  video = "https://www.youtube.com/watch?v=6jtBoqPpw-g"
  piece = "Transposed down to E minor"

}

% Violin part for "The Mad Lover" by John Eccles
% This file can be:
%   1. Compiled standalone to produce a violin part PDF with chords


targetKey = c

%   2. Included in full scores (the \score block is skipped)


global = {
  \time 3/4
  \key e \minor
  \tempo 4 = 100
}

chordNames = \chordmode {
  \global
  \set majorSevenSymbol = \markup { maj7 }
  \mark \markup \box "A"
  e2.:m            d2.               c2.              b2.:m
  e2.:m            d2.               c2.              b2.:m
  \mark \markup \box "B"
  e2.:m            d2.               c2.              b2.:m
  e2.:m            d2.               c2.              b2.:m
  \mark \markup \box "C"
  e2.:m            d2.               c2.              b2.:m
  e2.:m            d2.               c2.              b2.:m
  \mark \markup \box "D"
  e2.:m            d2.               c2.              b2.:m
  e2.:m            d2.               c2.              b2.:m
  \mark \markup \box "E"
  e2.:m            d2.               c2.              b2.:m
  e2.:m            d2.               c2.              b2.:m
  e2.:m            e2.:m
}

violin_music = \relative c'' {
  \global
  % === Phrase A  ===
  r8 b e g fs e
  \repeat volta 2 {
    fs   b,    b   fs'    g  fs
    fs   a,   a  e'    fs   e
    e   g,   fs   e     fs   ds'
    e   b     e   g    fs   e
    fs   b,    b   g'   g  fs
    fs   a,   a  e'    fs   e
    e   g,   fs   e     fs   ds'

    % === Phrase B  ===
    e   g,   g  b     b   d!
    d  fs,    fs   a    a  c
    c  e,    e   g    g  b
    b   ds,    ds   fs     fs   a
    a  g    g  b     b   d!
    d  fs,    fs   a    a  c
    c  e,    e   g    g  b
    b   ds,!   ds   fs     fs   a

    % === Phrase C  ===
    a  g    g  e'    e   g,
    g  a    a  e'    e   a,
    a  b     b   e     e   b
    b   c    c  fs,    fs   a
    a  g    g  e'    e   g,
    g  a    a  e'    e   a,
    a  b     b   e     e   b
    b   c    c  fs,    fs   a

    % === Phrase X  ===
    a  g    g  b,    b   g'
    g  fs     fs   b,    b   fs'
    fs   e     e   b     b   e
    e   ds     ds   fs     fs   a
    a  g    g  b,    b   g'
    g  fs     fs   b,    b   fs'
    fs   e     e   b     b   e
    e   ds     ds   fs     fs   a
    a  gs     gs   e'    e   gs,
    gs   a    a  e'    e   a,
    a  b     b   e     e   b
    c  b     a  g    fs   ds'
    e   gs,    gs   e'    e   gs,
    gs   a    a  e'    e   a,
    a  b     b   e     e   b
    c  b     a  g    fs   ds'
  }
  \alternative {
    { e b e g fs e   } % First time
    { e2. \bar "|."  }  % Final barline
  }
}

% Conditional compilation: only generate \score if compiled standalone
% When included in another file with (ly:set-option 'included-as-part #t), skip the score


\layout {
  \context {
    \Score
    \consists #(bars-per-line-engraver '(4 4 4 4 4 4 4 4 4 6))
    % Fine-tune horizontal/vertical to be above the key to not overlap with chords:
    \override RehearsalMark.X-offset = #4
    \override RehearsalMark.Y-offset = #-2
  }
  \context {
    \Voice
    \twoByTwoBeaming
  }
}

% Only generate score block if not included as part
#(if (not (ly:get-option 'included-as-part))
     (add-score
      #{
        \score {
          <<
            \new ChordNames {
              \transpose c \targetKey { \chordNames }
            }
            \new Staff {
              \transpose c \targetKey { \violin_music }
            }
          >>
          \layout {}
          \midi { }
        }
      #}))
