\version "2.24.4"
\language "english"

#(define DEBUG #t)

#(define (pitch->debug-string pitch)
  ;; Debug helper:
  ;; Examples:
  ;;   "C "  "E♭"  "F♯"  "B♭"
  (let* ((note-names (vector "C" "D" "E" "F" "G" "A" "B"))
         (name-index (ly:pitch-notename pitch))
         (alteration (ly:pitch-alteration pitch))
         (base-name  (vector-ref note-names name-index))
         (accidental
          (cond ((= alteration -1)   "♭♭")
                ((= alteration -1/2) "♭")
                ((= alteration 0)    " ")
                ((= alteration 1/2)  "♯")
                ((= alteration 1)    "♯♯")
                (else "?"))))
    ;; Ensure exactly 2 visible characters
    (string-append base-name accidental)))


#(define (blue-note-colored-engraver)
  ;; Common blues notes:
  ;;   ♭3, ♭5, ♭7  →  3, 6, 10 semitones
  (let* ((blue-intervals '(3 6 10))
         (latched-tonic #f))
    (make-engraver
     (acknowledgers
      ((note-head-interface engraver grob source-engraver)
       (let ((note-pitch (ly:event-property (event-cause grob) 'pitch)))

         ;; Latch tonic on first note encountered
         (when (and (not latched-tonic) (ly:pitch? note-pitch))
           (set! latched-tonic note-pitch)
           (when DEBUG
             (ly:message "BlueNote Engraver: tonic set to ~a"
                         (pitch->debug-string latched-tonic))))

         (when (and (ly:pitch? latched-tonic) (ly:pitch? note-pitch))
           (let* ((tonic-semitones (ly:pitch-semitones latched-tonic))
                  (note-semitones  (ly:pitch-semitones note-pitch))
                  (chromatic-interval
                   (modulo (- note-semitones tonic-semitones) 12))
                  (is-blue-note?
                   (memv chromatic-interval blue-intervals))
                  (notehead-color
                   (if is-blue-note?
                       (x11-color 'blue)
                       (x11-color 'black))))
             (when DEBUG
               (ly:message
                "BlueNote Engraver: note ~a  chromatic-interval=~a  => ~a"
                (pitch->debug-string note-pitch)
                chromatic-interval
                (if is-blue-note? "BLUE" "black")))
             (ly:grob-set-property! grob 'color notehead-color)))))))))

\layout { ragged-right = ##t }


MAJOR_Blues_Scale_Intervals = \lyricmode { "1" "2" "♭3" "♮3" "5" "6" }

C_Major_Blues_Scale = \relative c' { c4 d ef e g a }
D_Major_Blues_Scale = \relative d' { d4 e f fs a b }

\markup \huge \bold { "Blue Note Engraver" }

scaleLook = {
  \cadenzaOn
  \omit Staff.TimeSignature
  \override Staff.BarLine.stencil = ##f
  \override Staff.SpanBar.stencil = ##f
  \omit Score.BarNumber
}


\markup \bold { "♭3 only (C)" }
\score {
  <<
    \new Staff \with {
      \consists #(blue-note-colored-engraver)
    } { 
      \scaleLook
      \C_Major_Blues_Scale }
    \addlyrics { \MAJOR_Blues_Scale_Intervals }
  >>
}

\markup \bold { "♭3 only (D)" }
\score {
  <<
    \new Staff \with {
      \consists #(blue-note-colored-engraver)
    } { \scaleLook
        \D_Major_Blues_Scale }
    \addlyrics { \MAJOR_Blues_Scale_Intervals }
  >>
}

\markup \bold { "♭3 + ♭5 + ♭7 (common blues set)" }
C_Common_Blues_Scale = \relative c' {
  % C common blues set: C - D - E♭ - F - G♭ - G - A - B♭
  c4 d ef f gf g a bf
}
COMMON_Blues_Intervals = \lyricmode {
  "1" "2" "♭3" "4" "♭5" "5" "6" "♭7"
}
\score {
  <<
    \new Staff \with {
      \consists #(blue-note-colored-engraver)
    } { \scaleLook
        \C_Common_Blues_Scale }
    \addlyrics { \COMMON_Blues_Intervals }
  >>
}



