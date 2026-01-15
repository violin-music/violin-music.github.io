\version "2.24.4"
\language "english"

\header {
  title = "My Tune"
  composer = "Marc"
  country = "Your Country"
  genre = "Your Genre"
  subgenre = "Your Subgenre"
}

violin_music = \relative c' {
  \clef treble
  %\key b \major
  \time 3/4

  r4 e8 fs4 g8 |
  b8 e,8 \tuplet 3/2 {fs8 g'4} d'4 |
  \tuplet 3/2 {fs,8 g4} a4 r4
  r4 r4  r4  
  r4 r4  r4  
  r4 r4  r4  
  r4 r4  r4  
  r4 r4  r4  
}

\score {
  \new Staff {
    \violin_music
  }
  \midi { }
  \layout {}
}



