\version "2.24"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/bars-per-line-engraver.ly"

\header {
  title = "Tarantella Napoletana"
  composer = "Luigi Ricci"
  subtitle = "1852"
  country = "Italy"
  genre = "Folk"
}

% Define original key
originalKey = b
originalMode = #minor

global = {
  \time 6/8
  \key b \minor 
  \tempo 4=160
}

chordNames = \chordmode {
  \global
  
  
}

part_A = {
  
}

melody = \relative c''' {
  \global
  \partial 4.
  
  %% PART A
  b4 b8
  | fs4 fs8 b4 b8
  | fs4.   fs4 fs8
  | g4 g8 g8( a8 g8)
  | fs4.   fs4 fs8
  | fs4 e8 e4 e8
  | e4 d8 d4 d8
  | cs4 cs8 cs8( d8 cs)
  | b4 r8
  
    %% PART A
  b'4 b8
  | fs4 fs8 b4 b8
  | fs4.   fs4 fs8
  | g4 g8 g8( a8 g8)
  | fs4.   fs4 fs8
  | fs4 e8 e4 e8
  | e4 d8 d4 d8
  | cs4 cs8 cs8( d8 cs)
  | b4 r8
  
    %% PART B
    b4 cs8
  | d( cs d)   e( d cs)
  | d( cs d)   e( d cs)
  | d( cs b)   as( b cs)
  | b4 r8
  
    %% PART B
    b4 cs8
  | d( cs d)   e( d cs)
  | d( cs d)   e( d cs)
  | d( cs b)   as( b cs)
  
  | b4 r8 b,4 cs8

}



\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout {
    indent = 0
    \context {
      \Score
      %use the line below to insist on your layout
      %\override NonMusicalPaperColumn.line-break-permission = ##f
      \consists #(bars-per-line-engraver '( 4 5 5 5 5))
    }
  }
  \midi { }
}


