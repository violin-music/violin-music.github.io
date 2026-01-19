\version "2.24.0"
\include "english.ly"
\include "../../common/common-header.ily"

\header{
  title = "Comme une Fleur"
  composer = "Traditional"
  country = "Hungary"
  genre = "Folk"
  instrument = "Violin"
  meter = "meter"
}

\score {
  \relative d' {
    \key d \minor
    \time 2/4
    | r8 d'8 [d8 d8] 
    \bar ".|:-|"
    | c8. bf16 a4~
    | a8 e'-2 [e e]  
    | f8. e16 d4~
    | d8 d [d d]     
    \break
    | d8 a' a a       
    | bf8. a16 g4~
    | g8 bf [bf bf]  
    | a8. gs16 a4~
    \break
    | a8 f [a f]        
    | g8. f16 e4~
    | e8 g [f e]
    | f8. e16 d4~
    | d8 d d d   
    \bar ":|."
  }
  \layout {}
  \midi { \tempo 4 = 120}
}
