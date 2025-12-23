\version "2.19.64"
\include "../../common/common-header.ily"
\include "../../common/stylesheet_fiddle.ly"
\language "english"

\header {
  title = "La Rose Jaune"
  subtitle = "As performed by Yoska Nemeth"
  composer = "Traditional Hungarian"
  country = "Hungary"
  style = "folk tune"
}


global = {
  \time 4/4
  \key a \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  a1:m
}

% =======================
% Self-contained phrases
% =======================

% A: main theme
partA = \relative c'' {
  a4. gs8 a4 e4
  c'4. b8 c4 a4
  e'4 f8 e d4 b8 d
  c4 b8 gs
  a2
}

% B: contrasting phrase (also appears 8va)
partB = \relative c'' {
  g4. a8 b c d e
  f4 d b2
  e4. d8 c4 b
  c4 e b2
}

% C: later section (lower start)
part_C = \relative c'' {
  a4. b8 c4 c
  c c c4. e8
  ds e f e d c b a
  b4 b b b
}

% D: later section
part_D = \relative c'' {
  gs4. a8  b4 b
  b8 gs4 ~ gs8 e4. e'8
  ds e f e d c b c
  a4 r a' r
}

% Convenience: 8va versions
partAUp = \transpose c c' \partA
partBUp = \transpose c c' \partB

part_E = \relative c'' {
  e4. fs8 e d cs4
  cs4. d8 cs b a4
  e'4. fs8 e d cs4
  cs4. d8 cs b a4
}

melody = {
  \global

  \mark \markup \box "A"       \partA   \break

  \mark \markup \box "A"       \partA   \break

  \mark \markup \box "B"       \partB   \break

  \mark \markup \box "A"       \partA   \break

  \mark \markup \box "B"       \partB   \break

 \repeat volta 3 {
  \volta #'() { s1*0^\markup { \bold "3×" } }
  \mark \markup \box "A"       \partA   \break
 }
 
 \repeat volta 2 {
  \mark \markup \box "B (8va)" \partBUp \break
  \mark \markup \box "A (8va)" \partAUp \break
 }

  \mark \markup \box "C"       \part_C   \break

  \mark \markup \box "D"       \part_D   \break

  \mark \markup \box "E"       \part_E   \break
  
  \mark \markup \box "C"       \part_C   \break
  \mark \markup \box "D"       \part_D   \break

}


targetKey = c

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { indent = 2 }
  \midi { }
}
