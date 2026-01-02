\version "2.14.0"
\language "english"

\header {
    title    = "Au Clair de la Lune"
	composer = "Traditional"
	country  = "France"
	genre    = "Folk"
	arranger = "Marc"
}

\include "../../common/common-header.ily"

% ******************
%  MELODY
% ******************

melody =  {
     \relative c' {
		\key c \major
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
}

% ******************
%  HARMONY
% ******************
harmonies = \chordmode {
         \repeat "unfold" 2 {
            c1 c4 g4 c2
         }
         d2:m a d g
         c1 c4 g4 c2
}

\score {
   <<
      \chords {
         \frenchChords
		 \transpose c d \harmonies
      }
  	 \transpose c d \melody
 
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
        >>
}
% ******************
%  LYRICS
% ******************

\markup {
  \vspace #3.0 % Space between chords and lyrics
  \normalsize { % \teeny \tiny \small \normalsize \large \huge
    \fill-line {
\column {}
      \column {
         "1. Au clair de la Lune"
         "mon ami Pierrot"
         "Prête moi ta plume"
         "Pour écrire un mot"
         "Ma chandelle est morte"
         "Je n'ai plus de feu"
         "Ouvre moi ta porte"
         "Pour l'amour de dieu"
			%
        \hspace #1.0 % Space between verses
         "2. Au clair de la Lune"
         "Pierrot répondit:"
         "Je n'ai pas de plume"
         "Je suis dans mon lit"
         "Va chez la voisine"
         "Je crois qu'elle y est"
         "Car dans sa cuisine"
         "On bat le briquet"
      }
      \hspace #1.0 % Space between columns

      \column {
		"3. Au clair de la lune,"
		"L'aimable Arlequin"
		"Frappa chez la brune,"
		"Qui répond soudain:"
		"Qui frapp' de la sorte?"
		"Il dit à son tour:"
		"Ouvrez votre porte,"
		"Pour le dieu d'amour."

        \hspace #1.0 % Space between verses

        "4. Au clair de la lune,"
		"On n'y voitque peu;"
		"On chercha la plume"
		"On chercha le feu."
		"Cherchant de la sorte"
		"Ne sais c'qu'on trouva;"
		"Mais je sais qu'la porte"
		"Sur eux se ferma."
      }
\column {}
    }
  }
}