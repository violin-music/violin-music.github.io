\version "2.24.4"
\language "english"

%=============================================
% PHASE 1: MVP - Interval Calculation
%
% Goal: Validate that an engraver can track consecutive notes
%       and calculate semitone intervals
%
% Expected console output:
%   Interval: 2 semitones  (C→D)
%   Interval: 2 semitones  (D→E)
%   Interval: 1 semitones  (E→F)
%   Interval: 2 semitones  (F→G)
%   Interval: 2 semitones  (G→A)
%   Interval: 2 semitones  (A→B)
%   Interval: 1 semitones  (B→C)
%=============================================

#(define (interval-engraver-mvp)
  (let ((prev-pitch #f))
    (make-engraver
     (acknowledgers
      ((note-head-interface engraver grob source-engraver)
       (let ((note-pitch (ly:event-property (event-cause grob) 'pitch)))
         (when (ly:pitch? note-pitch)
           (when prev-pitch
             (let* ((interval-semitones
                     (- (ly:pitch-semitones note-pitch)
                        (ly:pitch-semitones prev-pitch))))
               (ly:message "Interval: ~a semitones" interval-semitones)))
           (set! prev-pitch note-pitch))))))))

\header {
  title = "Interval Engraver MVP - Phase 1"
  subtitle = "Console Output Test"
}

\markup \bold "Test 1: C Major Scale (should show 2-2-1-2-2-2-1)"

\score {
  \new Staff \with {
    \consists #(interval-engraver-mvp)
  } {
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

\markup \vspace #1
\markup \bold "Test 2: Chromatic Scale (should show all 1s)"

\score {
  \new Staff \with {
    \consists #(interval-engraver-mvp)
  } {
    \time 4/4
    c'4 cs' d' ds' e' f' fs' g'
  }
  \layout { }
}

\markup \vspace #1
\markup \bold "Test 3: Mixed intervals"

\score {
  \new Staff \with {
    \consists #(interval-engraver-mvp)
  } {
    \time 4/4
    c'4 e' g' c'' % Perfect intervals (4, 3, 5 semitones)
  }
  \layout { }
}
