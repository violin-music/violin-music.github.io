\version "2.24.4"

%write a function th that produces the same result as \markup {  \concat { "5" \super "th" } }  when used like \markup {  "5"\th } 




% The original example to show equivalence:
\markup { \concat { "5" \super "th" } }



#(define-markup-command (ordinal layout props num) (integer?)
  "Convert an integer to its ordinal form (e.g., 1st, 2nd, 3rd)."
  (let* ((n-mod-100 (remainder num 100))
         (n-mod-10 (remainder num 10))
         (suffix (cond
                  ((member n-mod-100 '(11 12 13)) "th")
                  ((= n-mod-10 1) "st")
                  ((= n-mod-10 2) "nd")
                  ((= n-mod-10 3) "rd")
                  (else "th"))))
    (interpret-markup layout props
      (markup #:concat ((number->string num) #:super suffix)))))

% Usage:
\markup { \ordinal #1 , \ordinal #2 , \ordinal #3 , \ordinal #4 , \ordinal #11 }



#(define-markup-command (ordinal layout props num) (integer?)
  "Convert an integer to its English ordinal form (e.g., 1st, 2nd, 3rd).
  
  This command automatically determines the correct suffix ('st', 'nd', 
  'rd', or 'th') based on the value of the integer provided. 
  It handles standard grammar exceptions for 11, 12, and 13."
  (let* ((n-mod-100 (remainder num 100))
         (n-mod-10 (remainder num 10))
         (suffix (cond
                  ((member n-mod-100 '(11 12 13)) "th")
                  ((= n-mod-10 1) "st")
                  ((= n-mod-10 2) "nd")
                  ((= n-mod-10 3) "rd")
                  (else "th"))))
    (interpret-markup layout props
      (markup #:concat ((number->string num) #:super suffix)))))

% ======================================================================
% USAGE EXAMPLES
% ======================================================================

% 1. Use inside a standard \markup block:
\markup { 
  "The" \ordinal #1 "movement" 
  "and the" \ordinal #22 "measure." 
}

% 2. Use as a rehearsal mark:
{
  c'1 \mark \markup \ordinal #3
  c'1
}

% 3. Use in header fields:
\header {
  title = \markup { "Ordinal Symphony No." \ordinal #9 }
}
