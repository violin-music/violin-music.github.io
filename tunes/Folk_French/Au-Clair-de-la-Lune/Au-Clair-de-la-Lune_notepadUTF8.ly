\version "2.24.4"

\header {
   title = "Au clair de la Lune"
   composer = "Jean-Baptiste Lully"
   country = "France"
   genre = "Folk"
}

\include "../../common/common-header.ily"

\score {
   <<

      \chords {
         \frenchChords
         \repeat "unfold" 2 {
            c1 c4 g4 c2
         }
         d2:m a d g
         c1 c4 g4 c2
      }

      \relative c' {

         \clef treble
         \time 4/4
         \tempo 4=80

         \repeat "unfold" 2 {
            c8 c c d e4 d c8 e d d c2
         }
         d8 d d d a4 a d8 c b a g2 
         c8 c c d e4 d c8 e d d c2
         \bar "|."
      }
 
      \addlyrics {
         \set stanza = "1. "
         Au clair de la Lu -- ne
         mon a -- mi Pier -- rot
         pre -- te moi ta plu -- me
         pour e -- crire un mot
         ma chan -- delle est mor -- te
         je n'ai plus de feu
         ou -- vre moi ta por -- te
         pour l'am -- our de dieu
      }

      \addlyrics {
         \set stanza = "2. "
         Au clair de la Lu -- ne
         Pier -- rot ré -- pon -- dit
         je n'ai pas de plu -- me
         je suis dans mon lit
         va chez la voi -- si -- ne
         je crois qu'elle y est
         car dans sa cui -- si -- ne
         on bat le bri -- quet
      }

   >>

}