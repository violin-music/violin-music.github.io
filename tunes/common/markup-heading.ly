\version "2.24.4"

#(define-markup-command (heading layout props level text) (number? string?)
   #:properties ((font-size 0))
   "Print a heading with size based on level."
   (let* (
           (fontsize (case level
                       ((1) 4)     ; Level 1: largest size (e.g., +4)
                       ((2) 2)     ; Level 2: medium size (e.g., +2)
                       ((3) 0)     ; Level 3: normal size (0)
                       (else -1))) ; Other levels: smaller size (-1)
           (vspace (case level
                     ((1) 0.8)     ; Level 1: largest size
                     ((2) 0.4)     ; Level 2: medium size
                     ((3) 0.2)     ; Level 3: normal size (0)
                     (else -1)))   ; Other levels: smaller size (-1)
           )
     (interpret-markup layout props
                       (markup
                        #:column (
                                   #:vspace vspace
                                   #:fontsize fontsize
                                   #:bold text
                                   #:vspace vspace))
                       )
     )
   )



#(define-markup-command (sectionHeading layout props level text) (number? string?)
   (let* (
           (fontsize  (cond ((= level 1) 4)      ; main section heading
                            ((= level 2) 2)      ; sub heading
                            ((= level 3) 0)      ; sub heading
                            (else -1)))
           (vspace (cond ((= level 1) 0.8)
                         ((= level 2) 0.4)
                         ((= level 3) 0.2)
                         (else 0)))
           )
     (interpret-markup layout props
(markup
                        #:column (
                        #:vspace vspace
                        #:fontsize fontsize
                        #:bold text
                        #:vspace vspace)))))