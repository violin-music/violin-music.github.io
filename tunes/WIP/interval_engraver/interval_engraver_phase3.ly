\version "2.24.4"
\language "english"
\paper {
  ragged-right = ##f
}
%=============================================
% PHASE 3: Bracket Stencils
%
% Goal: Replace text labels with rectangular/triangular brackets
% Expected: See brackets between notes (rectangular for 1, triangular for ½)
%=============================================

% Copied and adapted from C-Major-Scale-Intervals_Engraver.ly
#(define ((interval-callback label position) grob)
   (let* ((sys (ly:grob-system grob)))
     (if sys
         (let* ((all-grobs (ly:grob-array->list
                            (ly:grob-object sys 'all-elements)))
                (note-cols (filter
                            (lambda (g)
                              (grob::has-interface g 'note-column-interface))
                            all-grobs))
                (nc-positions (sort
                               (map (lambda (nc)
                                      (ly:grob-relative-coordinate nc sys X))
                                    note-cols)
                               <))
                (parent (ly:grob-parent grob X))
                (my-x (if parent
                          (ly:grob-relative-coordinate parent sys X)
                          0))
                ;; FIX: Look BACKWARD for previous note instead of forward
                (prev-positions (filter (lambda (x) (< x (- my-x 0.5))) nc-positions))
                (prev-x (if (pair? prev-positions) (car (reverse prev-positions)) #f))
                (padding 0.5)
                (raw-width (if prev-x (- my-x prev-x) 4.0))
                (width (- raw-width (* 2 padding)))
                (height 1.0)
                (thick 0.12)
                (is-half (string=? label "½"))
                (half-thick (/ thick 2))
                (label-stencil (grob-interpret-markup grob (markup #:small #:center-align label)))
                (label-width (interval-length (ly:stencil-extent label-stencil X)))
                (label-height (interval-length (ly:stencil-extent label-stencil Y)))
                (label-inside (eq? position 'MIDDLE))
                (label-gap 1.0)
                (label-padding 0.3)
                (half-label-w (+ (/ label-width 2) label-padding))
                (center-x (/ width 2))
                ;; ===========================================================
                ;; BRACKET GEOMETRY:
                ;; - Triangular brackets (½): The gap is at height/2
                ;;   (middle of the V-shape). Forms a triangle pointing down.
                ;;   See lines 58-72 for triangular bracket rendering.
                ;; - Rectangular brackets (1): The gap is at y=0
                ;;   (the bottom horizontal line is split for the label).
                ;;   Forms a U-shape with vertical sides.
                ;;   See lines 73-90 for rectangular bracket rendering.
                ;; ===========================================================
                (bracket-stencil
                  (if is-half
                      (if label-inside
                          (ly:stencil-add
                            (make-path-stencil
                              `(moveto 0 ,height
                                lineto ,(- center-x half-label-w) ,(/ height 2))
                              thick 1 1 #f)
                            (make-path-stencil
                              `(moveto ,(+ center-x half-label-w) ,(/ height 2)
                                lineto ,width ,height)
                              thick 1 1 #f))
                          (make-path-stencil
                            `(moveto 0 ,height
                              lineto ,center-x 0
                              lineto ,width ,height)
                            thick 1 1 #f))
                      (if label-inside
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
                          (make-path-stencil
                            `(moveto 0 ,height
                              lineto 0 0
                              lineto ,width 0
                              lineto ,width ,height)
                            thick 1 1 #f))))
                ;; Position label in middle of bracket or below it
                (label-y-offset (if label-inside
                                    ;; MIDDLE: depends on bracket type
                                    (if is-half
                                        ;; Triangular: gap is at height/2
                                        (- (/ height 2) (/ label-height 2))
                                        ;; Rectangular: gap is at y=0 (bottom)
                                        (- 0 (/ label-height 2)))
                                    ;; BELOW: position below bracket with gap
                                    (- 0 label-height (abs label-gap)))))

           ;; DEBUG: Log position settings
           (ly:message "DEBUG: label='~a' position=~a label-inside=~a is-half=~a"
                       label position label-inside is-half)
           ;; DEBUG: Log calculated offset
           (ly:message "DEBUG: label-y-offset=~a (height=~a label-height=~a)"
                       label-y-offset height label-height)
           ;; DEBUG: Log X positions
           (ly:message "DEBUG: my-x=~a prev-x=~a translate-x=~a"
                       my-x prev-x (if prev-x (+ (- prev-x my-x) padding) padding))

           (ly:grob-set-property! grob 'stencil
             (ly:stencil-translate
               (ly:stencil-add
                 bracket-stencil
                 (ly:stencil-translate
                   label-stencil
                   (cons center-x label-y-offset)))
               ;; Translate LEFT to previous note position
               (cons (if prev-x (+ (- prev-x my-x) padding) padding) 0)))))))

% Global setting for interval label position
#(define intervalPosition 'BELOW)

#(define (interval-engraver-phase3)
  (let ((prev-pitch #f)
        ;; CRITICAL: Capture intervalPosition VALUE when engraver is instantiated
        ;; This ensures each score uses the position setting active at \consists time
        (captured-position intervalPosition))
    (ly:message "Engraver instantiated with position: ~a" captured-position)
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

               (ly:message "Creating bracket '~a' for interval: ~a semitones" label interval-semitones)

               ;; Set initial text (will be replaced by bracket stencil)
               (ly:grob-set-property! text-script 'text
                 (markup #:null))
               ;; Attach the bracket callback with CAPTURED position value
               (ly:grob-set-property! text-script 'after-line-breaking
                 (interval-callback label captured-position))
               (ly:grob-set-property! text-script 'staff-padding 3.0)))

           (set! prev-pitch note-pitch))))))))

\header {
  title = "Interval Engraver Phase 3"
  subtitle = "Bracket Rendering Test"
}

\markup \bold "Test 1: C Major Scale with BELOW position"
\markup \smaller "Expected: rectangular brackets for whole tones (1), triangular for semitones (½)"

\score {
  \new Staff \with {
    \consists #(interval-engraver-phase3)
  } {
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

\markup \vspace #1
\markup \bold "Test 2: C Major Scale with MIDDLE position"

#(set! intervalPosition 'MIDDLE)

\score {
  \new Staff \with {
    \consists #(interval-engraver-phase3)
  } {
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

#(set! intervalPosition 'BELOW)

\markup \vspace #1
\markup \bold "Test 3: Chromatic Scale (all semitones)"
\markup \smaller "Expected: all triangular brackets"

\score {
  \new Staff \with {
    \consists #(interval-engraver-phase3)
  } {
    \time 4/4
    c'4 cs' d' ds' e' f' fs' g'
  }
  \layout { }
}
