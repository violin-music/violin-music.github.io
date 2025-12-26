\version "2.19.53"
\language "english"
%\include "stylesheet_fiddle.ly"
\include "../../common/common-header.ily"

\header {
    title = "Indifférence (Practice)"
    composer = "Tony Murena and Joseph Colombo"
    style = "valse musette"
    tagline = ""

  subtitle =  \markup \column {
    \line { "T Murena & Colombo"}
    \line { ""}
  }
}


\relative c'' {
  e' g b, e g, b e, g
  b,  e g, b e, g
  b, e g,
  b e g b e g b  		
}
\relative c' {
  g b e g b e g b  
  g
  e  b  g  e
  b 
} 
\relative c' {
  b  e  g  b 
  e  g  b  e
  g  e  b  g
  e  b  g  e	
}
  
