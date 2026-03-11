\version "2.24"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/violin-functions.ly"


\paper {
  indent = 0.0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}


\header {
  title = "Violin Sonata No. 1"
  piece = "4. Presto"
  tags = "presto"
  composer = "J.S. Bach (1685-1750)"
  opus = "BWV 1001"
  date = "1720"
  style = "Baroque"
  source = "Bach-Gefellschaft Edition 1879 Band 27.1"
  tagline =""
  country = "Germany"
}

divisioMaior = { 
  \once \override Score.BarLine.stencil = #ly:breathing-sign::divisio-maior 
} 

Melody = \relative g'' {
  \clef treble
  \time 3/8
  \key d \minor
  \repeat volta 2 { %begin 1st section
    %{  1 %} 	g16    [ bf    g     d     g      d  ] \divisioMaior 
    %{  2 %}	bf16   [ d     bf    g     bf     g  ]
    %{  3 %}	d16    [ g     d-0   bf    d      bf ] \divisioMaior 
    %{  4 %} 	g16    [ bf    d-0   g     bf     d  ]
    %{  5 %} 	g16    [ d    (c     bf    a      g )] \divisioMaior 
    %{  6 %} 	fs16   [ ds    fs    a     d      fs ]
    %{  7 %} 	a16    [ ef   (d     c     bf     a) ] \divisioMaior 
    %{  8 %} 	g16    [ d     g     bf    d      g  ]
    %{  9 %} 	bf16   [ g     ef    c     ef     g  ] \divisioMaior 
    %{ 10 %} 	a16    [ f     d     bf    d      f  ]
    %{ 11 %} 	g16    [ ef    c     a     c      ef ] \divisioMaior 
    %{ 12 %} 	d,16   [ g'   (fs    g     a      c,)] 
    %{ 13 %} 	g16    [ c    (bf    c     d      f,)] \divisioMaior 
    %{ 14 %} 	c16-\shiftUp"1" -\shiftDown"3" [ f' (e f g bf,)]
    %{ 15 %} 	f16-\shiftUp"4" [ bf (a  bf c  ef, )] 
    %{ 16 %} 	bf16-\shiftUp"1" [ ef' (d  ef f  af,) ]  
    %{ 17 %} 	ef16-1 [ bf    ef   g    ef     g   ]  
    %{ 18 %} 	c16    [ g     c    ef   c      ef  ]   
    %{ 19 %} 	f,16   [ c     f    a    f      a   ]   
    %{ 20 %} 	d16    [ a     d    f    d      f   ]   
    %{ 21 %} 	g,16   [ d     g    bf   g      bf  ]   
    %{ 22 %} 	ef16   [ bf    ef   g    ef     g   ]   
    %{ 23 %} 	a,16   [ f     a    c    a      c   ] 
    %{ 24 %} 	f16    [ c     f    a    f      a   ] 
    %{ 25 %} 	bf,16  [(c     d)   bf'  a      bf  ]   
    %{ 26 %} 	c,16   [(d     ef)  bf'  a      bf  ]   
    %{ 27 %} 	d,16   [(ef    f)   bf   a      bf  ]   
    %{ 28 %} 	ef,16  [(f     g)   bf   a      bf  ]   
    %{ 29 %} 	a,16   [(c     ef)  g    f      ef  ]    
    %{ 30 %} 	d16    [(bf   )ef  (bf  )f'-\shift-4     af, ]   
    %{ 31 %} 	g16    [(a     bf  )d,   c      a'  ]  
    %{ 32 %} 	bf,16  [ d    (c    bf   a      g   ]   
    %{ 33 %} 	a16)   [ g'   (fs   e    d)     c'  ]   
    %{ 34 %} 	bf16   [(a     g )  f'  (e      d ) ]   
    %{ 35 %} 	cs16   [ bf'  (a    g    f      e ) ]   
    %{ 36 %} 	f16    [(d    )g   (d)   a'     c,  ]   
    %{ 37 %} 	bf16   [ a'   (g    f    e      d)  ]   
    %{ 38 %} 	e16    [(c)    f^\extFourth   (c)   g'     bf, ]   
    %{ 39 %} 	a16    [ g'(   f    e    d      cs) ]   
    %{ 40 %} 	d16    [(bf)   e   (bf)  f'-\shift-4     a,  ]   
    %{ 41 %} 	g16    [f' (   e    d    cs     b ) ]   
    %{ 42 %} 	cs16   [(a)    d(   a)   e'     g,  ]   
    %{ 43 %} 	f16    [ d'    bf   g    e      c'  ]  
    %{ 44 %} 	d,16   [ bf'   g    e    c      a'  ] 
    %{ 45 %} 	bf,16  [ g'    e    cs   a      f'  ] 
    %{ 46 %} 	g,16   [ f'   (e    d    cs     b)  ]  
    %{ 47 %} 	a16    [ d     cs  (e)   d     (f)  ]   
    %{ 48 %} 	a,16   [ e'    d   (f)   e     (g)  ]   
    %{ 49 %} 	a,16   [ f'    e   (g)   f     (a)  ]   
    %{ 50 %} 	bf,16  [ g'    fs  (a)   g     (bf) ]   
    %{ 51 %} 	cs,16  [ bf'  (a    g    f     e)   ]   
    %{ 52 %} 	f16    [ d     f    a    d     f    ]   
    %{ 53 %} 	<< { a16 [ d, a8 cs ] } 
                 \\ 
                   { s8 a8 [ <a, g'>8 ] } >> | 
    %{ 54 %} 	<d fs d'>4.  | 
  } %end of repeated section

%\break 


\repeat volta 2 { %begin repeated section
    %{ 55 %}	d16   [ a     d     fs     d     fs  ] 
    %{ 56 %}	a16   [ fs    a     d      a     d   ]  
    %{ 57 %} 	fs16  [ d     fs    a      fs    a   ]  
    
\break    
    
    %{ 58 %} 	d16   [ a     fs    d      a     fs  ]  
    %{ 59 %} 	d16   [(e     fs    g      a     bf  ]  
    %{ 60 %} 	c16 ) [ ef    c     a      c     a   ]  
    %{ 61 %} 	fs16  [ d     fs    a      d     c   ]  
    %{ 62 %} 	bf16  [ d     bf    g      d     bf  ] 
    %{ 63 %} 	g16   [(a     bf    c      d     ef  ]  
    %{ 64 %} 	f16)  [ gs    f     d      f     d   ]  
    %{ 65 %} 	b16   [ g     b     d      g     f   ] 
    
    \break
    
    %{ 66 %} 	ef16  [ c     ef    g      c     d   ]  
    %{ 67 %} 	ef16  [ c     gs    f      gs    c   ] 
    %{ 68 %} 	d16   [ bf    g     ef     g     bf  ]  
    %{ 69 %} 	c16   [ gs    f     d      f     gs  ]  
    %{ 70 %} 	g,16  [ c'   (b     c      d)    f,  ]  
    %{ 71 %} 	c16   [ f'   (ef    f      g)    bf, ]  
    %{  2 %} 	f16   [ bf   (gs    bf     c)    ef, ]  
    %{  3 %} 	bf16  [ ef'  (d     ef     f)    af, ]  
    
    \break
    
    %{  4 %} 	ef16  [ af   (g     af     bf)   df, ] 
    %{ 75 %} 	af16  [(c     f     af     g     f)  ] 
    %{  6 %} 	b,16  [(d     f     af     g     f)  ]  
    %{  7 %} 	c16   [(e     f     af     g     f)  ] 
    %{  8 %} 	d16   [(f     b     c      d     f,) ]  
    %{  9 %} 	ef16  [(g     c     d      ef    c)  ]  
    %{ 80 %}	af'16 [(g     f     ef     d     c)  ]  
    %{  1 %} 	g'16  [ d     ef    c      g     b   ] 
    \break
    %{  2 %} 	c,16  [ f    (ef    d      c     bf) ] 
    
    %{  3 %} 	a16   [ c     f     c      f     a   ]
    %{  4 %} 	f16   [ a     c     a      c     ef  ]
    %{ 85 %} 	c16   [(ef    a     g      f     ef) ]
    %{  6 %} 	d16   [(c     bf    c      d     e!) ] 
    %{  7 %} 	fs16  [ a     c     a      fs    a   ]
    %{  8 %} 	fs16  [ c     fs    c      a     c   ] 
    %{  9 %} 	a16   [ fs    a     fs     d     c'  ]  
    %{ 90 %} 	bf16  [ g     bf    g      e     d'  ]  
    
    
    \break
    %{  1 %} 	c16   [ a     c     a      fs    ef' ]  
    %{  2 %} 	d16   [ bf    d     bf     g     f'  ]  
    %{  3 %} 	ef16  [ c     ef    c      a     g'  ]  
    %{  4 %} 	fs16  [(d     e     fs     g     a  )]  
    %{ 95 %} 	bf16  [ d,    g     bf     c,    ef  ] 
    %{  6 %} 	a16   [ f     d     bf     d     f   ] 
    %{  7 %} 	g16   [ bf,   ef    g      a,    c   ]  
    %{  8 %} 	f16   [ d     bf    g      bf    d   ]   
    %{  9 %} 	ef16  [ g,    c     ef     f,    a   ]   
    %{100 %} 	d16   [ bf    g     e!     g     bf  ]  
    %{  1 %} 	c16   [(a    )bf (  g)     fs    a ] |  
    %{  2 %} 	d,16  [(e     fs    g      a     bf )]   
    %{  3 %} 	c16   [(ef   )d  (  g)     fs (  bf) ]   
    %{  4 %} 	a16   [(g     fs    e      d     c ) ]   
    %{105%} 	bf16  [ ef    d  (  bf)    c (   a)  ]  
    %{  6 %} 	f16   [ d'    c  (  a)     bf(   g)  ]   
    %{  7 %} 	ef16  [ c'    bf (  g)     a (   fs) ]   
    %{  8 %} 	d16   [ bf'   a  (  fs)    g (   ef) ]   
    %{  9 %} 	c16   [ a'    g  (  e)     fs(   d)  ]  
    %{110 %} 	bf16  [ d'(   c     bf     a     g)  ]  
    %{  1 %} 	ef'16 [(d     c)    bf'(   a     g)  ]   
    %{  2 %} 	fs16  [(g     a)    d,     ef    c   ]  
    %{  3 %} 	f,16  [(b     d)    af     g     f   ]   
    %{  4 %} 	e16   [ g     c     e      g     bf, ]   
    %{115 %} 	ef,16 [(a     c)    g      f     ef  ]   
    %{  6 %} 	d16   [ f     bf    d      f     af, ]
    %{  7 %} 	g16   [ ef'(  bf    g      ef    d)  ] 
    %{  8 %} 	c16   [ ef'(  c     bf     a     g   ] 
    %{  9 %} 	fs16) [ d' (  a     fs     d     c   ] 
    %{120 %} 	bf16) [ d' (  bf    a      g     f   ] 
    %{  1 %} 	e16) [ c      g'    bf,    a     g'  ] 
    %{  2 %} 	fs16 [ d      a'    c,     bf    a'  ] 
    %{  3 %} 	g16  [ ef     bf'   d,     c     bf' ] 
    %{  4 %} 	a16  [ f      c'    ef,    d     c'  ] 
    %{125 %} 	bf16 [ g      d'    f,     e     d'  ] 
    %{  6 %} 	c16  [ a      ef'   g,     fs    ef' ] 
    %{  7 %} 	d16  [ bf     g'    bf,    a     c   ] 
    %{  8 %} 	bf16 [ g      fs    a      d,    c   ] 
    %{  9 %} 	bf16 [ g'     fs (  a)     g (   bf) ] 
    %{130 %} 	c,16 [ a'     g  (  bf)    a (   c)  ] 
    %{  1 %} 	d,16 [ bf'    a  (  c)     bf(   d)  ] 
    %{  2 %} 	ef,16[ c'     b  (  d)     c (   ef) ] 
    %{  3 %} 	fs,16[ ef'(   d     c      bf    a)  ] 
    %{  4 %} 	bf16 [ d      g     bf     g     d  ] 
    %{135 %} 	bf16 [ g      d8  <d c' fs>8 ] 
    %{136 %} 	<g, d' bf' g' >4. \bar "|." 
  } %end of repeated section
}


\score {
  \new Staff {
    % Layout Settings
    \override Score.BarNumber.break-visibility = #all-visible
   % \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)		% Print a bar number every second measure
    \override Score.BarNumber.font-size = #-5
    \override Score.BarNumber.self-alignment-X = #CENTER
    %\override Score.BarNumber.direction = #DOWN
    \override Score.BarNumber.self-alignment-X = #0       %reduce space between staff and bar number
    %\override Score.BarNumber.extra-offset = #'(0 . 0.3)  %reduce space even more
    \override Score.BarNumber.Y-offset = #0               %align number with bar

    % Melody
    \Melody
  }
}
