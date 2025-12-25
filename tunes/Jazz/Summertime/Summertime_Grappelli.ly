\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/twoByTwoBeaming.ly"

date = #(strftime "%B, %d %Y" (localtime (current-time)))

\header { 
  title = "Summertime" 
  subtitle = "As played by Stephane Grappelli"
  subsubtitle = "Album Stephane Grappelli, Bill Coleman"
  video = "https://www.youtube.com/watch?v=9Y4d8DXF83M"
  composer = "G. Gershwin"
  country = "USA"
  genre = "Jazz"
  poet =  "Transcribed by Marc Mouries"
} 
\markup \vspace #1
\markup { "=> Add Chords"}
\markup { "=> Add Swing Tempo"}
\markup \vspace #1


global = {
  \time 4/4
  %\tempo 4=120
}

chordNames = \chordmode {
s1 s1 s1 s1
e1:m  
s1 s1 
e2:m  d2:m 
e1:m 
}


music = \relative c' {
  \global
  r1^"Piano" r1 r1 r1
  \break
  | r4^"Violin" r8 b16 b16 \grace g' \glissando b8 g8 b8 b8 ~ 
  | b2 r2
  | a8 g a g \grace a (\glissando bf)  a!8 ~ a4
  | g8 e8 e e \tuplet 3/2 {ds8 d c} 
  \tuplet 3/2 {c8 b b~}  
  \break
  b4 r4 r4 r4
  r4 r4 r4 r4  
  r4 r4 r4 r4  
  r4 r4 r4 r4  
  \break
  r4 r4 r4 r4  
  r4 r4 r4 r4  
  r4 r4 r4 r4  
  r4 r4 r4 r4  
}

\score {
  <<
   % \new ChordNames \chordNames
    \new Staff \music
  >>
  \layout {}
  \midi { }
}