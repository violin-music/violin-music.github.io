\version "2.24.4"
\language "english"

%=============================================
% AUTOMATIC INTERVAL ENGRAVER - Library File
%
% Automatically calculates and displays intervals between consecutive notes
% with rectangular brackets (whole tones) or triangular brackets (semitones)
%
% Usage:
%   \include "interval_engraver.ly"
%
%   \score {
%     \new Staff \with {
%       \consists #(interval-engraver)
%     } {
%       \set-interval-position #'MIDDLE  % or BELOW (default)
%       c'4 d' e' f' g' a' b' c''
%     }
%   }
%
% Features:
%   - Automatically calculates chromatic intervals between consecutive notes
%   - No manual \interval annotations needed
%   - Rectangular brackets for whole tones (2 semitones)
%   - Triangular brackets for semitones (1 semitone)
%   - Configurable position: MIDDLE (labels inside brackets) or BELOW (default)
%   - Gracefully handles rests (breaks interval chain)
%
%=============================================

% Bracket rendering callback
% Draws custom bracket stencils after line breaking when note positions are known
#(define ((interval-callback label position) grob)
   (let* ((sys (ly:grob-system grob)))
     (if sys
         (let* (;; Find all note columns in the system
                (all-grobs (ly:grob-array->list
                            (ly:grob-object sys 'all-elements)))
                (note-cols (filter
                            (lambda (g)
                              (grob::has-interface g 'note-column-interface))
                            all-grobs))
                ;; Get sorted X positions of all notes
                (nc-positions (sort
                               (map (lambda (nc)
                                      (ly:grob-relative-coordinate nc sys X))
                                    note-cols)
                               <))
                ;; Get this grob's X position
                (parent (ly:grob-parent grob X))
                (my-x (if parent
                          (ly:grob-relative-coordinate parent sys X)
                          0))
                ;; Find previous note position (look backward)
                (prev-positions (filter (lambda (x) (< x (- my-x 0.5))) nc-positions))
                (prev-x (if (pair? prev-positions) (car (reverse prev-positions)) #f))
                ;; Bracket dimensions with padding on both sides to prevent overlap
                ;; TUNING PARAMETERS:
                (side-padding 0.5)  ; Space between bracket edges and noteheads (try 0.4-0.6)
                (notehead-offset 0.5)  ; Global shift adjustment to align with visual notehead centers
                (raw-width (if prev-x (- my-x prev-x) 4.0))
                (width (- raw-width (* 2 side-padding)))
                (height 1.0)
                (thick 0.12)
                ;; Label properties
                (is-half (string=? label "½"))
                (label-stencil (grob-interpret-markup grob (markup #:small #:center-align label)))
                (label-width (interval-length (ly:stencil-extent label-stencil X)))
                (label-height (interval-length (ly:stencil-extent label-stencil Y)))
                (label-inside (eq? position 'MIDDLE))
                (label-gap 1.0)
                (label-padding 0.3)  ; Padding around label when inside bracket (MIDDLE position)
                (half-label-w (+ (/ label-width 2) label-padding))
                (center-x (/ width 2))
                ;; ===========================================================
                ;; BRACKET GEOMETRY:
                ;; - Triangular brackets (½): Form a V-shape with gap at height/2
                ;;   Used for semitone intervals
                ;; - Rectangular brackets (1): Form a U-shape with gap at y=0
                ;;   Used for whole tone intervals
                ;; ===========================================================
                (bracket-stencil
                  (if is-half
                      ;; Triangular bracket for semitones
                      (if label-inside
                          ;; MIDDLE: Split triangle at mid-height for label
                          (ly:stencil-add
                            (make-path-stencil
                              `(moveto 0 ,height
                                lineto ,(- center-x half-label-w) ,(/ height 2))
                              thick 1 1 #f)
                            (make-path-stencil
                              `(moveto ,(+ center-x half-label-w) ,(/ height 2)
                                lineto ,width ,height)
                              thick 1 1 #f))
                          ;; BELOW: Complete triangle
                          (make-path-stencil
                            `(moveto 0 ,height
                              lineto ,center-x 0
                              lineto ,width ,height)
                            thick 1 1 #f))
                      ;; Rectangular bracket for whole tones
                      (if label-inside
                          ;; MIDDLE: Split bottom line for label
                          (ly:stencil-add
                            (make-path-stencil
                              `(moveto 0 ,height
                                lineto 0 0
                                lineto ,(- center-x half-label-w) 0)
                              thick 1 1 #f)
                            (make-path-stencil
                              `(moveto ,(+ center-x half-label-w) 0
                                lineto ,width 0
                                lineto ,width ,height)
                              thick 1 1 #f))
                          ;; BELOW: Complete U-shape
                          (make-path-stencil
                            `(moveto 0 ,height
                              lineto 0 0
                              lineto ,width 0
                              lineto ,width ,height)
                            thick 1 1 #f))))
                ;; Calculate label Y offset based on position and bracket type
                (label-y-offset (if label-inside
                                    ;; MIDDLE: position depends on bracket shape
                                    (if is-half
                                        ;; Triangular: gap is at height/2
                                        (- (/ height 2) (/ label-height 2))
                                        ;; Rectangular: gap is at y=0 (bottom)
                                        (- 0 (/ label-height 2)))
                                    ;; BELOW: position below bracket with gap
                                    (- 0 label-height (abs label-gap))))
                ;; Calculate final translation offset
                ;; Apply notehead-offset to fine-tune alignment with visual notehead centers
                (translate-x (if prev-x
                                 (+ (- prev-x my-x) side-padding notehead-offset)
                                 side-padding)))

           ;; Set the grob's stencil to the bracket + label
           (ly:grob-set-property! grob 'stencil
             (ly:stencil-translate
               (ly:stencil-add
                 bracket-stencil
                 (ly:stencil-translate
                   label-stencil
                   (cons center-x label-y-offset)))
               ;; Translate to start at previous note + side-padding
               ;; Left edge: prev-x + side-padding, Right edge: my-x - side-padding
               (cons translate-x 0)))))))

% Global setting for interval label position
% Options: 'BELOW (default) or 'MIDDLE
#(define intervalPosition 'BELOW)

% Configuration function to change label position
% Usage: \set-interval-position #'MIDDLE
set-interval-position =
#(define-void-function (pos) (symbol?)
   (set! intervalPosition pos))

% Main interval engraver
% Tracks consecutive notes and creates interval brackets between them
#(define (interval-engraver)
  (let ((prev-pitch #f)
        ;; Capture intervalPosition VALUE when engraver is instantiated
        ;; This ensures each score uses the position setting active at \consists time
        (captured-position intervalPosition))
    (make-engraver
     (acknowledgers
      ;; Reset prev-pitch when encountering a rest
      ;; This breaks the interval chain so rests don't get brackets
      ((rest-interface engraver grob source-engraver)
       (set! prev-pitch #f))

      ((note-head-interface engraver grob source-engraver)
       (let ((note-event (event-cause grob))
             (note-pitch (ly:event-property (event-cause grob) 'pitch)))
         ;; Only process actual pitches (skip rests)
         (when (ly:pitch? note-pitch)
           ;; Calculate interval if we have a previous note
           (when prev-pitch
             (let* ((interval-semitones
                     ;; Use absolute value to handle both ascending and descending intervals
                     (abs (- (ly:pitch-semitones note-pitch)
                             (ly:pitch-semitones prev-pitch))))
                    ;; Format label based on interval size
                    (label (cond
                            ;; 1 semitone → "½"
                            ((= interval-semitones 1) "½")
                            ;; 2 semitones → "1"
                            ((= interval-semitones 2) "1")
                            ;; Larger intervals: show as number (e.g., "2", "1½")
                            (else (string-append (number->string (quotient interval-semitones 2))
                                                 (if (odd? interval-semitones) "½" "")))))
                    ;; Create TextScript grob to attach the bracket to
                    (text-script (ly:engraver-make-grob engraver 'TextScript note-event)))

               ;; Set initial text to null (bracket will replace it)
               (ly:grob-set-property! text-script 'text
                 (markup #:null))
               ;; Attach the bracket callback (runs after line breaking)
               (ly:grob-set-property! text-script 'after-line-breaking
                 (interval-callback label captured-position))
               ;; Position the bracket below the staff
               (ly:grob-set-property! text-script 'staff-padding 3.0)))

           ;; Store current pitch for next note
           (set! prev-pitch note-pitch))))))))
