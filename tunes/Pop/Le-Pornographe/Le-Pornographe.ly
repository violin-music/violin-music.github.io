\version "2.24"
\language "english"
\include "../../common/common-header.ily"

\include "../../common/include-score-if-standalone.ily"


\header {
  title = "Le Pornographe"
}

% Define original key & mode
originalKey = a
originalMode = #minor


global = {
  \time 4/4
  \key \originalKey \originalMode
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  a1:m c1  d2 d2:m e1:7
  
  a1:m a1:m  b1:7  e1:7 
  c1   c1    e1:7  e1:7
}

melody = \relative c' {
  \global
  \mark "Intro"
   \repeat volta 2{
     a4  c e a g2 e4 g
     fs2  d4. f8 e4 d c b
   }
   

   \break
   a4  a8 b c4  d e a a4 r4
   b4  b8 b b4. fs8 b4 a gs2
   \break
  c4  g8 g g4 a g  f e2
  r4 r8 d8 e f e d c2( b4) r4
  \break
   a4  c8 c c4  e e a a4 r4
   b4  b8 b b4. fs8 b4 a gs2 
   \break
  c4  g8 g g4 a g  f e4 r4
  r4 d4 c b a2
}

words = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 \skip 1 \skip 1 
  \skip 1 \skip 1 


Au -- tre -- fois, quand j'é -- tais mar -- mot
J'a -- vais la pho -- bie des gros mots
Et si j'pen -- sais mer -- de tout bas
Je ne le disais pas, Mais


Au -- jourd hui que mon ga -- gne pain
C'est d'par -- ler comme un tur -- lu -- pin
Je n'pen -- se plus mer -- de par -- di!
Mais je le dis.
  
}

% This score only renders when compiling THIS file directly
\scoreIfStandalone
  #`(
     (chords . ,chordNames)
     (lyrics . ,words)
     (unit . "4.")
     (bpm  . 120)
    )
  \melody


