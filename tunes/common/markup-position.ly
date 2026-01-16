% markup-position.ly
\version "2.24.4"


#(define-markup-command (my-round-box layout props radius padding thickness text) 
  (number? number? number? markup?)
  "Draws an outline box with custom radius and no background."
  (let* ((m (interpret-markup layout props text))
         (x-ext (ly:stencil-extent m X))
         (y-ext (ly:stencil-extent m Y))
         ;; Calculate boundaries based on text extent + padding
         (x-lo (- (car x-ext) padding))
         (x-hi (+ (cdr x-ext) padding))
         (y-lo (- (car y-ext) padding))
         (y-hi (+ (cdr y-ext) padding))
         (w (- x-hi x-lo))
         (h (- y-hi y-lo))
         ;; Ensure radius isn't larger than half the width or height
         (r (min radius (/ w 2) (/ h 2))))
    
    (ly:stencil-add
      m  ;; The original text
      (ly:make-stencil
        `(path ,thickness
           (moveto ,x-hi ,(- y-hi r)
            lineto ,x-hi ,(+ y-lo r)
            ;; Bottom-right corner
            curveto ,x-hi ,y-lo ,x-hi ,y-lo ,(- x-hi r) ,y-lo
            lineto ,(+ x-lo r) ,y-lo
            ;; Bottom-left corner
            curveto ,x-lo ,y-lo ,x-lo ,y-lo ,x-lo ,(+ y-lo r)
            lineto ,x-lo ,(- y-hi r)
            ;; Top-left corner
            curveto ,x-lo ,y-hi ,x-lo ,y-hi ,(+ x-lo r) ,y-hi
            lineto ,(- x-hi r) ,y-hi
            ;; Top-right corner
            curveto ,x-hi ,y-hi ,x-hi ,y-hi ,x-hi ,(- y-hi r)
            closepath))
        x-ext y-ext))))




#(define-markup-command (position layout props text) (markup?)
  "A shortcut command that calls my-round-box "
  (let* ((radius 3.0)
         (padding 0.4)
         (thickness 0.1))
         
         (interpret-markup layout props
    #{ 
      \markup \my-round-box #0.5 #0.4 #0.1 #text 
    #}))
)