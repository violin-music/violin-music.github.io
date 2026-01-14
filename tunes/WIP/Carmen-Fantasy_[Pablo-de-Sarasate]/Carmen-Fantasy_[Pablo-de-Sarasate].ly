\version "2.24.4"
\language "english"
%\include "../../common/common-header.ily"

% ============================================================
% Carmen Fantasy (after Bizet) — Sarasate, Op. 25
% ============================================================

\header {
  title = "Carmen Fantasy"
  subtitle = "after Bizet's Opera, Opus 25"
  instrument = "for Violin and Piano"
  composer = "Pablo de Sarasate (1844–1908)"
}

\paper {
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 14\mm
  right-margin = 14\mm

  ragged-last = ##f
  ragged-bottom = ##f
}

\layout {
  \context {
    \Score
    % Uncomment if you want more horizontal space while transcribing:
    % \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

% ============================================================
% Global musical settings (set these once you know them)
% ============================================================

global = {
  \numericTimeSignature
  \key d \minor      
  \time 3/8          
  \tempo 4 = 84      
}

% ============================================================
% VIOLIN part
% ============================================================

violinMusic = \relative c'' {
  \global
  \clef treble
  | s4.
  | s4.
  | s4.
  | r8^"4eme corde." a8.( g16)
  | g8 r8 f8\downbow ~
  | f8 e8.[( d16)]
  \break
  | d8 r8 cs8\downbow ~
  | cs8 d8.( e16)
  | bf4. ~
  | bf8 c8( bf8)
  | a4. (~
  | a 16 b  a  b  a  b)
  | cs16 d  cs d  cs d
  | e16  f  e  f  e  f
  
  % You can add rehearsal marks as you go:
  % \mark \markup \box "A"
  % ... music ...
}

violinDynamics = {
  % Put dynamics here aligned with the violin staff if you want:
  % s1\p
  s1\p
}

% ============================================================
% PIANO part (RH + LH)
% ============================================================

pianoRH = \relative c'' {
  \global
  \clef treble

  % ---- START TRANSCRIBING HERE ----
  %\repeat unfold 8 { s1 }
}

pianoLH = \relative c {
  \global
  \clef bass

  % ---- START TRANSCRIBING HERE ----
  %\repeat unfold 8 { s1 }
}

% Optional: pedal (put below the piano staff)
pianoPedal = {
  % Example:
  % s1\sustainOn s1\sustainOff
  \repeat unfold 8 { s1 }
}

% ============================================================
% SCORE
% ============================================================

\score {
  <<
    \new StaffGroup 
    <<
      \new Staff = "Violin" 
      <<
        \new Voice = "Vln" { \violinMusic }
        \new Dynamics { \violinDynamics }
      >>

%       \new PianoStaff = "Piano" 
%       <<
%         \new Staff = "PianoRH" { \pianoRH }
%         \new Staff = "PianoLH" { \pianoLH }
%         % Uncomment if you want pedal line:
%         % \new Dynamics { \pianoPedal }
%       >>
    >>
  >>
  \layout { }
  % Uncomment if you want MIDI quick-checks during transcription:
  % \midi { }
}
