\version "2.19.38"
\language "english"

\header {
  title = "Le Pornographe"
}

global = {
  \time 4/4
  \key d \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  d1:m
  
}

melody = \relative c' {
  \global
  \mark "Intro"
   d8  f a d c4 a8 c    b4  g8. bf16 a8 g f e  
   d8  f a d c4 a8 c    b4  g8. bf16 a8 g f e  
   
   \break
   d8  d16 e f8  g a d d4 
   e8  e16 e e8. b16 e8 d cs4
  f8  c16 c c8 d c  bf a4
  r8. g16 g bf a g f8 a8 ~ a4
  
}

words = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  
  
Au -- tre -- fois, quand j'é -- tais mar -- mot
J'a -- vais la pho -- bie des gros mots
Et si j'pen -- sais mer -- de tout bas
Je ne le disais pas
  
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { indent = 0}
  \midi { }
}
\score {
  <<
    \new ChordNames { \transpose d a,\chordNames}
    \new Staff                  { \transpose d a, \melody }
    \addlyrics { \words }
  >>
  \layout { indent = 0}
  \midi { }
}
