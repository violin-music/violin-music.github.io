\version "2.24.2"
\language "english"

\header {
  title = "Hier Encore"
  composer = "Charles Aznavour"
  subtitle = "Violin"
  country = "France"
  style = "chanson"
}

\include "../../common/common-header.ily"

violin = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
  \tempo 4 = 89
  r8 d8 e[ f] a d |
  e2 ~ e8 d8 
  e2 ~ e8 d8 
  e2 d8 a8 
  c8 bf e,[ f] g a |
  e8 d a2 |
  
  \break
  
  c8 bf e,[ f] a g |
  e d a2 ~ 
  a2. ~
  a4 r4 g'8 a
  \break
  | bf4. a8 bf d
  | c 8 c c c ~ c c16 bf16
  | a 8 a a a a c8
  | bf8 bf bf bf ~ bf bf16 a16
  | g 8 g g g g bf
  | a 8 g a g a g
  | f 8 f f f g16 g a8 ~
  | a4 r8. f16 16 16 g16 a16
  
  %%%%

}

\score {
  \new Staff {
    \new Voice = "violin" \violin
  }
  \layout {}
  \midi {}
}
