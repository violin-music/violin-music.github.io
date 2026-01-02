\version "2.19.38"
\language "english"

\header {
  title = "The Lark Ascending (Practice)"
  composer = "Ralph Vaughan Williams"
  country = "England"
  style = "Classical"
}

\include "../../common/common-header.ily"
\paper {
  %paper-width = 15\cm
  
}


global = {
  \time 6/8
  \key c \major
  \tempo 4=100
}



practice = \relative c'' { 
 % \time 3/4
 % \repeat volta 2 { b 4. 8  8  8   b 4. 8  8  8   b 4. 8  8  8   b 4. 8  8  8 }
 % \repeat volta 2 { b 8  4. 8  8   b 8  4. 8  8   b 8  4. 8  8   b 8  4. 8  8 }
 % \repeat volta 2 { b 8  8  4. 8   b 8  8  4. 8   b 8  8  4. 8   b 4. 8  4. 8 }
 % \repeat volta 2 { b 8  8  8  4.  b 8  8  8  4.  b 8  8  8  4.  b 8  8  8  8 }
  %  a16 [(b a b] d [ e d e ]  fs[ a fs a)] 
  
  \repeat volta 2 { 
    % 1 ------
  d4  ( \tuplet 3/2 {e8 d  e}    fs4  \tuplet 3/2 { a8 fs a)}    b4  ( \tuplet 3/2 {a8 fs a}    fs4  \tuplet 3/2 { e8 d e)}
  }
  
  % 2 ------
  \repeat volta 2 { 
  e4  ( \tuplet 3/2 { d8  e fs}   a4    \tuplet 3/2 { fs8 a b)}    a4 ( \tuplet 3/2 { fs8 a fs}    e4  \tuplet 3/2 {  d8 e d)}
  \break
  }
  % 3 ------
  \repeat volta 2 { 
  d4  ( \tuplet 3/2 { e8 fs a}   fs4    \tuplet 3/2 { a8 b a)}    fs4 ( \tuplet 3/2 { a8 fs e}    d4  \tuplet 3/2 {  e8 d e)}
  }
  % 4 ------
  \repeat volta 2 { 
    
  %  e                 fs8 a8 fs )} a                 b8  a8 fs     a4                fs8  e d     e)}               d4  e8 d
 
  e4  ( \tuplet 3/2 { fs8 a fs}   a4    \tuplet 3/2 { b8 a fs)}    a4 ( \tuplet 3/2 { fs8 e d}    e4  \tuplet 3/2 {  d8 e d)}
  }
}

\score {
    \new Staff { \practice }
  \layout {indent=0 }
}




BminorChordNames = \chordmode {
  \key b \minor
  <b d fs>2
  <cs e g>
  <d fs a>
  <e g b>
  <fs a cs>
  <g b d>
  <a cs e>
  <b d fs>2


}
Bminor = \relative c' {
  \key b \minor
  <b d fs>2
  <cs e g>
  <d fs a>
  <e g b>
  <fs a cs>
  <g b d>
  <a cs e>
  <b d fs>2

}

\score {
  <<
    \new ChordNames \BminorChordNames
    \new Staff {    \Bminor }
  >>
  \layout { }
}

melody = \relative c' {
  \global  
 % \cadenzaOn  
  R2.
  R2.
  r4 r8 d32\upbow [(e d e] a4)
  d,32[( e d e] a8[ b])
  d,32[( e d e] a [b a b] d8.[ b8])
  \break
  a32 [(b a b] d8.[ b8])
  a32 [(b a b] d8.[ b8])
  a32 [(b a b] d [ e d e ]  fs[ a fs a)] 
  b8. [(a32 e]  d[ e d e d e d] e a)
  b8. [(a32 e]  d[ e d e d e d] e a)  
}

\score {
    \new Staff { \melody }
  \layout { }
}