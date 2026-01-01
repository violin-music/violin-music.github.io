\version "2.24.4"
\language "english"

\include "../../common/twoByTwoBeaming.ly"
\include "../../common/bars-per-line-engraver.ly"
\include "../../common/common-header.ily"

\include "./The-Mad-Lover_header.ily"
\include "./The-Mad-Lover_part_Violin.ly"

\header {
  piece = "Transposed down to E minor"
}

% Violin part for "The Mad Lover" by John Eccles
% This file can be:
%   1. Compiled standalone to produce a violin part PDF with chords


targetKey = e

%   2. Included in full scores (the \score block is skipped)


global = {
  \time 3/4
  \key f \minor
  \tempo 4 = 100
}



violin_music_in_E = \relative c'' {
  \global
  % === Phrase A  ===
  r8 c f af g f
  \repeat volta 2 {
    g   c,    c   g'    af  g
    g   bf,   bf  f'    g   f
    f   af,   g   f     g   e'
    f   c     f   af    g   f
    g   c,    c   af'   af  g
    g   bf,   bf  f'    g   f
    f   af,   g   f     g   e'

    % === Phrase B  ===
    f   af,   af  c     c   ef!
    ef  g,    g   bf    bf  df
    df  f,    f   af    af  c
    c   e,    e   g     g   bf
    bf  af    af  c     c   ef!
    ef  g,    g   bf    bf  df
    df  f,    f   af    af  c
    c   e,!   e   g     g   bf

    % === Phrase C  ===
    bf  af    af  f'    f   af,
    af  bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    c   df    df  g,    g   bf
    bf  af    af  f'    f   af,
    af  bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    c   df    df  g,    g   bf

    % === Phrase X  ===
    bf  af    af  c,    c   af'
    af  g     g   c,    c   g'
    g   f     f   c     c   f
    f   e     e   g     g   bf
    bf  af    af  c,    c   af'
    af  g     g   c,    c   g'
    g   f     f   c     c   f
    f   e     e   g     g   bf
    bf  a     a   f'    f   a,
    a   bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    df  c     bf  af    g   e'
    f   a,    a   f'    f   a,
    a   bf    bf  f'    f   bf,
    bf  c     c   f     f   c
    df  c     bf  af    g   e'
  }
  \alternative {
    { f c f af g f   } % First time
    { f2. \bar "|."  }  % Final barline
  }
}

% Conditional compilation: only generate \score if compiled standalone
% When included in another file with (ly:set-option 'included-as-part #t), skip the score


% \layout {
%   \context {
%     \Score
%     \consists #(bars-per-line-engraver '(4 4 4 4 4 4 4 4 4 6))
%     % Fine-tune horizontal/vertical to be above the key to not overlap with chords:
%     \override RehearsalMark.X-offset = #4
%     \override RehearsalMark.Y-offset = #-2
%   }
%   \context {
%     \Voice
%     \twoByTwoBeaming
%   }
% }


\score {
  <<
    \new ChordNames { \transpose \originalKey \targetKey { \chordNames   } }
    \new Staff      { \transpose \originalKey \targetKey { \violin_music } }
  >>
  \layout {}
  \midi { }
}
