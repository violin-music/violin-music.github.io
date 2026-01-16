\version "2.24.4"


%=============================================
% PARAGRAPH - 
%
% 
%=============================================

#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist \justified-lines { \hspace #par-indent #args } #}))

\markuplist {
  \paragraph \smaller \italic {
    \bold { Note: } Each diamond note shows the touch point (left-hand contact).
    The tiny parenthesized note above shows the sounding pitch. Touch feather-light,
    then use faster bow speed and lighter bow pressure to make the harmonic speak.
  }
}


\markuplist {
  \paragraph \smaller \italic {
    \bold { Note: } Each diamond note shows the touch point (left-hand contact).
    The tiny parenthesized note above shows the sounding pitch. Touch feather-light,
    then use faster bow speed and lighter bow pressure to make the harmonic speak.
  }
}


