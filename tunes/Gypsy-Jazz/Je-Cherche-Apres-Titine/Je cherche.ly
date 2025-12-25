\version "2.19.5"
\language "english"

\header {
   title    = "Je cherche après Titine"
   composer = "Léo Daniderff"
   arranger = "Charlie Chaplin"
   tagline  = ##f   % Remove default LilyPond tagline
}



\layout {
 % indent = 0\mm
  \context {
    \Voice
    \consists "Melody_engraver"
    %\override Stem #'neutral-direction = #'()
  }
  \context {
    \Lyrics 
    \override LyricText #'font-size = #-3 
  }
}


chordNames = \chordmode {
  \time 4/4
  c1:m              c1:m                g1:7     c2:m      g2:7 
  c1:m              c1:m                g1:7     c2:m      g2:7 
  c2:m  f4.:m  g8   c2:m  f4.:m  g8     c1:m     f2:m      c2:m

}

melody = \relative c'' {
  \key ef \major
  \time 4/4
  \tempo 4 = 80

  \slurDown
  %% this is a comment
  
%{
  r4    r8
  g8    af g   fs  g 
  af g  r  g   af  g  c  g 
  g  f  r  f   g   f  d  f 
  f  ef r  e   ef  d  b  d 
  \break
  %% 2nd time
  c4     r8 g'  af  g  fs g 
  af g  r  g   af  g  c  g 
  g  f  r  f   g   f  d  f 
  f  ef r  f   ef  d  c  b
  \break
  %% 
  c8 c'16 b bf8 a      
  af4.-^  g8( c,) c'16 b bf8 a      
  af4.-^  g8( c ) r c-^ r  
  r8[ c d ef] d c bf af g4 r4
  \break
 %%
 %% 
 \key af \major 
 | r4 r4 r4 r8  c8    
 | df c  b c   df c r c     
 | df c  f c   c16 b  bf r r8 bf     
 | c  bf g bf  bf  af r  af      
 | af g e g f f'16 e ef8 d
 | df4.-^  c8( f,) f'16 e ef8 d     
 | df4.-^  c8( f) r f-^  r  
 | r4 r4 r4 r4
 \break

%}
 \key ef \major
 |  \partial 16 g16  
 
 \repeat unfold 2 {
 | af8  g  fs  g    af[  \appoggiatura { g af} g] ~ g r16  g
 | af8  g  c8.   g16    g   f f8 r8.    f16
 | g16 af32( g32)   f8  d   f    f   ef  r  c16 c
 | ef8.  d16  c8 b c4.  g'8 
 }
 

 | g8\glissando af4 g8 c,4. r16 af'16
 | \grace{ g( af} g8) f ef d c4. g'8
 | g\glissando af4 g8 c4. r16 af16
 | g8 a bf b c4. r16 c
 | df8 c \tuplet 3/2 {b c ef} df c r8 c
 | df c f8. c16 c bf bf r8 r16 bf8
  c bf g bf \grace{c(}bf) af16 r r8  f16 af 
  b16\glissando c bf af
  bf8 af8 
  f4  b16 c ef8 df c \tuplet 3/2{b c ef8}
  df \grace{c df} c4 c8 
 | df c f8. c16 c bf bf r8 r16 bf8
  c bf g bf \grace{c(}bf) af16
  r r8  f16 af 
  b16\glissando c bf af
  bf8 af8 
  f4 r 
 
  
  
}

verse = \lyricmode {
  % Lyrics follow here.
  Je cher -- ch'a pres Ti ti ne
  Ti ti ne  oh Ti ti ne
  Je cher -- ch'a pres Ti ti ne
  et ne la trou ve pas
}

\score {
  <<
    \new ChordNames  {
      \set chordChanges = ##f
      \chordNames
    }
    \new Voice = "one" { 
       \set Staff.midiInstrument = #"acoustic guitar (steel)" 
      \melody 
    }
   % \new Lyrics \lyricsto "one" { \verse }
  >>
  \layout { }
  \midi {}
}