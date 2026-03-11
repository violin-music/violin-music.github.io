\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
#(set-global-staff-size 22)
#(set-default-paper-size "letter")

%=============================================
%   created by MuseScore Version: 1.3
%          September 28, 2014
%=============================================
%% http://lsr.di.unimi.it/LSR/Item?id=838

%LSR completed by P.P.Schneider on Feb. 2014 for v2.18

#(define ((bars-per-line-engraver bar-list) context)
  (let* ((working-copy bar-list)
         (total (1+ (car working-copy))))
    `((acknowledgers
       (paper-column-interface
        . ,(lambda (engraver grob source-engraver)
             (let ((internal-bar (ly:context-property context 'internalBarNumber)))
               (if (and (pair? working-copy)
                        (= (remainder internal-bar total) 0)
                        (eq? #t (ly:grob-property grob 'non-musical)))
                   (begin
                     (set! (ly:grob-property grob 'line-break-permission) 'force)
                     (if (null? (cdr working-copy))
                         (set! working-copy bar-list)
                         (begin
                           (set! working-copy (cdr working-copy))))
                           (set! total (+ total (car working-copy))))))))))))


\paper {
 % line-width    = 190\mm
 % left-margin   = 10\mm
 % top-margin    = 10\mm
 % bottom-margin = 20\mm
  %%indent = 0 \mm
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  ragged-bottom = ##t
  %% in orchestral scores you probably want the two bold slashes
  %% separating the systems: so uncomment the following line:
  %% system-separator-markup = \slashSeparator
}


\header {
  title    = "Volcanic Jig"
  composer = "Natalie MacMaster"
  country = "Canada"
  genre = "Folk"
  style = "Jig"
}

melody = \relative c'{
    %\set Staff.instrumentName = \markup { \bold \huge "A"}
    \key g \major
    \time 6/8
    \partial 8
    \mark \default
    \repeat volta 2 {
        fs'8\upbow
    g( fs e)  b(  c  d)
    d( c\mordent  b)  c4\upbow b8(
   \appoggiatura {c16 b}  a8  )  fs d' c( b  a)
    b e b   ds( e fs)
\break
g( fs e) b c d
    d c b  c4    b8
    a c b  a g fs
    g4~ g8 g4
    }
  \break
    % PART B
    \mark \default
    fs'8
    \repeat volta 2 {
     g  a  b,4  e8 g
     a  g  e    d  e  g
     a  b  c,4  e8
     g
     a  b  g   a  g  e
     g  fs d4  a8 cs
     d  e  fs  fs e  d
     c  d  e   e  d  c
    }
    \alternative {
     { b c d  d e fs}
     { b, c d  d c b}
    }
    \mark \default
 \break
    \repeat volta 2 {
    a d, a'  b   d, b'
    a fs d   d4  b'8
    a b  g   a   b  c
    d4~ d8 d c   b
\break

  }
\alternative {
     {
       a  d, a'   b  d, b'
       a  fs d    d  b' c
       d  c  b    c  b  g
       a4~   a8   a4    b8
\break
     }
     { a  b  g     a  b  c
    c  d  b     c  d  e
    e  fs d     e  fs g
    g  a  fs     g  a  b
     \break}
    }

\break
    \repeat volta 2 {
    \mark \default
    b, b'  b,  a' b, g'
    b, fs' b,  e  d  b
    g  e'  g,  d' g, c
    g  b   g   c  b  g
  \break
    c  g'  c,  g' a  c,
    c  g'  c,  g' a  c,
    b  e   b   g' fs e
    b  fs' b,  a' g  fs
\break
    b, b'  b,  a' b, g'
    b, fs' b,  e  d  b
    g  e'  g,  d' g, c
    g  b   g   c  b  g
\break
    c  g'  c,  g' a  c,
    c  g'  c,  g' a  c,
    b  e   b   g' fs e
    b  fs' b,  a' g  fs
    }\bar "|."
}% end of melody

\book {
  \bookOutputSuffix "Violin"
  \score {
    \new Staff {
        \clef treble
          %\once\override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark.break-align-symbols = #'(clef)
      \melody
    }
    \midi { }
    \layout {
      indent = 0
    \context {
      \Score
      %use the line below to insist on your layout
      %\override NonMusicalPaperColumn.line-break-permission = ##f
     % \consists #(bars-per-line-engraver '(4 4 4 5 4 4 4 ))
    }
  }
}
}

%{
convert-ly (GNU LilyPond) 2.19.38  convert-ly: Processing `'...
Applying conversion: 2.19.16, 2.19.22, 2.19.24, 2.19.28, 2.19.29,
2.19.32
%}
