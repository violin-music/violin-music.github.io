\include "includes.ly"
\include "markups.ly"
% ****************************************************************
% Autumn Leaves (Joseph Kosma)
% ****************************************************************
\header {
 title = "Les Feuilles Mortes (Autumn Leaves)"
 subtitle = "Joseph Kosma"
}
chordNames = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  % PART A
  s1      a1:m7   d:7   g:maj7   
  c:maj7  fs:m    b:7   e:m
  e:m     a1:m7   d:7   g:maj7
  c:maj7  fs:m    b:7   e:m      
% PART B
  e1:m    fs:m    b:7   e:m
  e:m     a1:m7   d:7   g:maj7
% part C
  c:maj7  a1:m6   b:7  e:m
  e:m     a1:m6   b:7  e:m  
}

melody = {
   \key e \minor

   \sectionLetter "A"
   r4 e'4\upbow fs' g'
   %\repeat volta 2 {
    c''1 ~ c''4  d'4 e'4 fs'4
    b'2 b'2(
   % \break
    b'4)    c'4 \upbow d'4 e'4
    a'1 ~ a'4 b4 cs'4 ds'
    g'1
    r4  e'4 fs'4 g'4
    c''1 ~ c''4 d'4 e' fs'4
    b'2 b'2 ~
    b'4   c'4 \upbow d'4 e'4
    a'1 ~ a'4  fs'4 a' g'
    e'1

 \sectionLetter "B"
    r2 ds'4 e'4
    fs'4 b fs'2 ~
    fs'4 fs'4 e'4 fs'4
    g'1 ~
    g'4 g' fs' g'
    a'1 ~ a'4 d' d''4. c''8
    b'1 ~

\sectionLetter "C"
    b'4 r4 as'4 b'4
    c''4 c''4 a'! a'
    fs'2. c''4
    b'2 b'2 ~
    b'2. e'4
    a'2. g'4 fs'2 g'4 b4
    e'1
     \bar "|."
}
\include "../common/score.ly"