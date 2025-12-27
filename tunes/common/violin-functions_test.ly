\version "2.19.49"
\include "english.ly"
\include "violin-functions.ly"
\include "markups.ly"

\header {
    title = "Violin & Common Functions for Lilypond"
}
%%%%\displayMusic { c'^\markup \finger "4" }


\markup {
  Presents using lilypond as a string player.
}

exampleStaccato = \relative c' {\addStaccato {e'8( d c b)} a4 }
 %       "Fingering preceded by a '"\char##x2012"' to indicate a shift."

exampleBend = \relative c'' {
         \slide d g4 
         \slide g d4 
        }
        
        
        
%%%%%
exampleFingeringShift = \relative c'' {
        f4-1 g b4-\shift-2 _\shift-2 a4
        f4-1 g b4-\shiftUp"2" -\shiftDown "2" \acciaccatura { a16[ b16] } a4
	}

exampleHarmonics = \relative c'' 
{
		<d\harmonic>1\flageolet
}

example_Glissando = \relative c''    {
    a'' \glissando e''
    a'' \glissSize #5  e''  }


example_Shift = \relative c''    {
 		f4-1 g a2-\shiftUp"1" -\shiftDown"1"
}
\markuplist {
    \override #'(padding . 0)
    \table #'(-1 -1 -1)
     {
        \underline { Description Example  Syntax }
        \bold "Fingering: The '-' a shift."
        \writeMusic ##{ \relative c''' {a b c d} #}  
        \small \typewriter {"\restez {music}"}
        
        \bold{"Bend/Slide"}
        \writeMusic ##{ \exampleBend #}  
        \small \typewriter {"\slide{<start note> <target note>}"} 

        \bold{"Bowing"}
        \writeMusic ##{ \relative c'' {b2\db  d2\ub} #}  
        \small \typewriter {"\b2\db  d2\ub"} 


        \left-column {
          \bold{"Glissando"}
          \tiny {
             "The default glissando is too short. "
             "The glissSize function allows to set "
             "a custom length. Ex. \glissSize #5 a e "
          }
        }
        \writeMusic ##{   \relative c'' { c4^\glissando  b a g } #}  
        \small \typewriter {"c4^\rit  b a g"}



         \bold{"Harmonics" }
        \writeMusic ##{ \exampleHarmonics #}  
        \small \typewriter {"d,\\harmonic>"}

        \left-column {
          \bold{"Fingering with shift"}
          \tiny {
             "Print a finger number preceded by "
           \concat { "'" \char##x2012
             "' to indicate a shift."
        }}}
        
     %% SHIFT 
     %% -------------   
        \writeMusic ##{ \exampleFingeringShift #}  
        \small \typewriter {"f4-1 g b4-\shift-2 _\shift-2 a4"} 

        "Restez"
        \writeMusic ##{
          \relative c''' { fs4.-4 d8  \restez { a8( fs d a) }} #}  
        \small \typewriter {"\restez {music}"}
        
        "Restez: finger"
        \writeMusic ##{
        \relative c'' {
          \restezFinger "4" { e8 e, e' } b}
        #}  
        \small \typewriter {"\restezFinger {music}"}   
        
        \bold{ "Restez: position"}
        \writeMusic ##{
        \relative c'' {
          g'8 f ~ \restezPos "V pos." {   f8 c a f}}
        #}  
        \small \typewriter {"\restezPos {music}"} 

        "Ritardo"  
        \writeMusic ##{   \relative c'' { c4^\rit  b a g } #}  
        \small \typewriter {"c4^\rit  b a g"}
        
        "Staccato"  
        \writeMusic ##{ \exampleStaccato #}  
        \small \typewriter {"\addStaccato {e'8( d c b)} a4"}

        "Shift"  
        \writeMusic ##{ \example_Shift #}  
        \small \typewriter {"\shift "}

        "Tuplet"  
        \writeMusic ##{ \relative g' { \tuplet 3/2 {g8 a b}} #}  
        \small \typewriter {"\\tuplet 3/2 {g8 a b}"}

     }
}