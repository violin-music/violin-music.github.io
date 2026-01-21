\version "2.24.4"
\language "english"

%=============================================
% PHASE 2: Add Visual Labels
%
% Goal: Create TextScript grobs with interval labels
% Expected: See "1" and "½" labels appear between notes
%=============================================

#(define (interval-engraver-phase2)
  (let ((prev-pitch #f))
    (make-engraver
     (acknowledgers
      ((note-head-interface engraver grob source-engraver)
       (let ((note-event (event-cause grob))
             (note-pitch (ly:event-property (event-cause grob) 'pitch)))
         (when (ly:pitch? note-pitch)
           (when prev-pitch
             (let* ((interval-semitones
                     (- (ly:pitch-semitones note-pitch)
                        (ly:pitch-semitones prev-pitch)))
                    (label (cond
                            ((= interval-semitones 1) "½")
                            ((= interval-semitones 2) "1")
                            (else (number->string interval-semitones))))
                    (text-script (ly:engraver-make-grob engraver 'TextScript note-event)))

               (ly:message "Creating label '~a' for interval: ~a semitones" label interval-semitones)

               (ly:grob-set-property! text-script 'text
                 (markup #:small label))
               (ly:grob-set-property! text-script 'direction DOWN)
               (ly:grob-set-property! text-script 'staff-padding 3.0)))

           (set! prev-pitch note-pitch))))))))

\header {
  title = "Interval Engraver Phase 2"
  subtitle = "Visual Labels Test"
}

\markup \bold "Test: C Major Scale with visual interval labels"
\markup \smaller "Expected: labels showing 1, 1, ½, 1, 1, 1, ½"

\score {
  \new Staff \with {
    \consists #(interval-engraver-phase2)
  } {
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

\markup \vspace #1
\markup \bold "Test: Chromatic Scale"
\markup \smaller "Expected: all ½ labels"

\score {
  \new Staff \with {
    \consists #(interval-engraver-phase2)
  } {
    \time 4/4
    c'4 cs' d' ds' e' f' fs' g'
  }
  \layout { }
}
