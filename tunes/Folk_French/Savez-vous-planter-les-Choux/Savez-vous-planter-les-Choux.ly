\version "2.14.0"
\include "english.ly"

\header {
	title = "Savez-vous planter des choux ?"
	composer = "Traditional"
	country = "France"
	genre = "Folk"
	footnotes = ""
	tagline = "Lily was here 2.11.48 -- automatically converted from ABC"
}

\include "../../common/common-header.ily"

melody =  {
  \time 6/8 
  \key d \major   
  \relative c' {
		\partial 8*3 d4   fs8  
		| a4  d8 a4 fs8 
		| d4. cs4 d8  		fs8  g  a  a  g   a   b4  g4
		d8   d  b  b  a   b   g4   
		fs8  g  a  c   b   a'   g4  \bar "|"   
  }
}

\score {
  \melody
}

\score {
  \transpose d f { \melody}
}