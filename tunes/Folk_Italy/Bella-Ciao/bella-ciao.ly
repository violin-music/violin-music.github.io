\version "2.24.4"
\include "italiano.ly"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Bella Ciao"
  composer = "Traditional Italian"
  country = "Italy"
  style = "folk song"
}

% Base key (D minor)
targetKey = d

melodySource =  {
  \time 2/4
  \key d \minor		
	r8 a d' e' 
	f' d'~ d'4
	r8 a d' e' 
	f' d'~ d'4
	r8 a d' e' 
	f'4 e'8 d' 
	f'4 e'8 d' 
	a'4  a'
	a'8 a'[ g' a'] 
	bf'8 bf' ~ bf'4
	r8 bf' a' g' bf' a'~ a'4
	r8 a' g' f' e'4 a' f' e' d'2
}

% Transposed melody driven by targetKey
melody = \transpose d \targetKey \melodySource

chordsSource = \chordmode { 
     d2:m d:m d:m d:m d:m d:m d:m 
     a:7 a:7 g:m g:m d:m d:m a:7 d4:m a4:7 d:m 
} 

chords = \transpose d \targetKey \chordsSource

\score { 
  << 
    \context ChordNames { \chords }
    \new Staff {
      \key \targetKey \minor
      \context Voice = "voiceMelody" { \melody }
    }   
  >> 
  \midi {} 
  \layout {} 
} 
