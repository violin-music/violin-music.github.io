\version "2.19.54"
\include "english.ly"
\include "../../common/violin-functions.ly"

\header {
  title = "Tambourin"
  composer = "Andre Gretry (1741-1813)"
  country = "France"
  style = "classical"
  key = "Am"
}

\include "../../common/common-header.ily"

Violin = \relative a' {
    \key a \minor
    \time 2/4
    a4-.-> \db   r8 [c16(\( b)] a4 c\) b2-. e-4  
  | d8( c b c) a4( e'-4) | d8( c b a)  b2
  | a4-.-> r8 [c16(\( b)] a4 c\) b4 d-1 f2-3 
  | e4-.-2 \ub ( d-.-1 c-.-4 b-.-3) 
  | a2-2 ~ a
% 
\break
    a'4-1-.->  r8 [c16(\( b)] a4 c\) b2-. e-4\flageolet  
  | d8-4( c b c) a4-. ( e'-.-4\flageolet) | d8( c b a)  b2
\break
    a4-.-> \db   r8 [c16(\( b)] a4 c\) 
    b4-. d4-4 f2  
  | e4-.-3 ( d-.-2 c-.-4 b-.-2) a2-1 
    
 \break   
    c,8-1 d e f g-1 a g a g a g a
    g4-1 a8( b) c g f-1 e d8 f a g f e d c 
  | b4 g
    c8-1 d e f g-1 a g a g a g a
    g4-1 a8( b) c g f-1 e d8 f a f e d c b 
  | c2 
    \set fingeringOrientations = #'(right right right)
    <g-1 e'-2 c'-3>\ub
\break
  | a4-.-> \db   r8[ c16(\( b)] a4 c\) b2-. e-4  
  | d8( c b c) a4-.( e'-4-.) | d8( c b a)  b2
\break  
   a4-.-> r8 c16(\( b) a4 c\) b4 d-1 f2-3 
   e4-.-2 \ub ( d-.-1 c-.-4 b-.-3) 
   a2-2  
   cs4-.\ub( e-.)
\break
  | \key a \major  b4.-.(  cs8-.) d4-.( d4-.)
  | d( cs) cs8\ub( e-0) cs'-3 a
  | e'8( cs-3) a-1 e-0   a8-3( e-0) d cs
  | cs4( b)  cs-.\ub( e-.)
\break
  | b4.-.(  cs8-.) 
    d4-.( d4-.)
  | d4( cs)  
    a'8-3\ub( e-0) cs a
   fs'4.( e8)   
   d8( cs b a)
  | \tuplet 3/2 4 {e'8->( gs a b a gs)} 
    \tuplet 3/2 4 {e8->( gs a b a gs)} 
    
  | \tuplet 3/2 4 {e8->( a-\shiftUp"1" b cs b a)} 
    \tuplet 3/2 4 {e8->( a-1 b cs b a)}
  | \tuplet 3/2 4 {e8->( b'-2 cs d cs b )}  
    \tuplet 3/2 4 {e,8->( b'-2 cs d cs b )} 
  | \tuplet 3/2 4 {e,8->( a-1 b cs b a)} 
    \tuplet 3/2 4 {e8->( a-1 b cs b a)}
\stemDown
  | e2-2 
    \tuplet 3/2 4 {e,8-1->( b' e-0) e(  b  e,)}  
    \break
  | \tuplet 3/2 4 {e8-1->( b' gs') gs( b, e,)}  
    \tuplet 3/2 4 {e8-1->( b' b')  b(  b, e,)}
  | \acciaccatura {<e b'>4 }  e''1-4\flageolet  
  ~ e2 r2
%\break
 \key a \minor
    a,,4-.-> \db   r8[ c16(\( b)] a4 c\) b2-. e-4
    \break
  | d8( c b c) a4-.( e'-.-4)
  | d8( c b a)  b2--
  
  | a4-.-> r8[ c16(\( b)] a4 c\) b4 d-1 f2-3 
  \break
  | e4-.-2 \ub ( d-.-1 c-.-4 b-.-3) 
  a8-0->^\markup "Con fuoco" e' a e   a,8-> e' a e 
  | b8\downbow( c d) f\upbow(  e d c b)
  | c8-0-> e a e   a,8-> e' a e 
  \break
  | b8\downbow( c d) f(  e d c b)
  | a2\downbow
  
  % bariolage END once
  
      \tuplet 3/2 4 {a,8-> ( e' a-0) a(  e  a,)}  
      \tuplet 3/2   {a8-1->( e' c')}  
      \tuplet 3/2   {c8    ( e,  a,)} 
      \tuplet 3/2   {a8-1->( e' a)}  
      \tuplet 3/2   {a8    ( e  a,)}  
      
      \break
      
  % bariolage END once
      \tuplet 3/2  {a8->( e' c')}  
      \tuplet 3/2  {c8  ( e, a,)} 
      \tuplet 3/2  {a8->( e' a)}  
      \tuplet 3/2  {a8  ( e  a,)} 
      \tuplet 3/2  {a8->( e' c')}  
      \tuplet 3/2  {c8  ( e, a,)} 
      \tuplet 3/2  {a8->( e' a)}  
      \tuplet 3/2  {a8    ( e  a,)} 
      
\appoggiatura {a8->( e' c')} a'2 r2
  
}

\score {
   \new Staff { \time 2/4 \Violin  }
%    \new Staff { \looksSlower {\time 4/4 \Violin  }}

 }
