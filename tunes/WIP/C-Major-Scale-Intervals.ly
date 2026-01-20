\version "2.24.4"
\language "english"

\header {
  title = "C Major Scale Intervals"
}

\paper {
  ragged-right = ##f
}

% Callback using after-line-breaking to access system layout
% position: 'middle or 'below
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
                (next-positions (filter (lambda (x) (> x (+ my-x 0.5))) nc-positions))
                (next-x (if (pair? next-positions) (car next-positions) #f))
                (padding 0.5)
                (raw-width (if next-x (- next-x my-x) 4.0))
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
                (label-y-offset (if label-inside
                                    (- (/ label-height 2))
                                    (- 0 label-height (abs label-gap)))))

           (ly:grob-set-property! grob 'stencil
             (ly:stencil-translate
               (ly:stencil-add
                 bracket-stencil
                 (ly:stencil-translate
                   label-stencil
                   (cons center-x label-y-offset)))
               (cons padding 0)))))))

% Global setting for interval label position
% Options: 'BELOW (default) or 'MIDDLE
#(define intervalPosition 'BELOW)

% Usage: \interval "1"
% To change position globally: #(set! intervalPosition 'MIDDLE)
% Or use: \set-interval-position #'MIDDLE
set-interval-position =
#(define-void-function (pos) (symbol?)
   (set! intervalPosition pos))

interval =
#(define-music-function (label) (string?)
   #{
     \tweak after-line-breaking #(interval-callback label intervalPosition)
     \tweak staff-padding #3.0
     -\markup ""
   #})

\score {
  \relative c' {
    \time 4/4
    \set-interval-position #'MIDDLE
    c4 \interval "1"
    d4 \interval "1"
    e4 \interval "½"
    f4 \interval "1"
    g4 \interval "1"
    a4 \interval "1"
    b4 \interval "½"
    c
  }
  \layout { }
}
