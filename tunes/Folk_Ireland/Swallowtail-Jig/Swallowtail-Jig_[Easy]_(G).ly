\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"
\include "../../common/stylesheet_fiddle.ly"
\header {
  title = "Swallowtail Jig"
  subtitle = "Easy Version in G"
  composer = "Traditional"
  country = "Ireland"
  genre = "Folk"
  subgenre = "Irish"
  difficulty = "Beginner"
}

global = {
  \time 6/8
  \key g \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  g2.:m    g2.:m    f2.    f2.
  g2.:m    g2.:m    f2.    g2.:m
  g2.:m    g2.:m    f2.    g2.:m
  g2.:m    g2.:m    f2.    g2.:m
}

% Simplified melody - no slurs, no ornaments, straight rhythm
% Transposed from E minor to G major (up a minor 3rd)
melody = \relative c'' {
  \global

  % Part A
  \repeat volta 2 {
    b8 g g   d' g, g |
    b8 g g   d' c b |
    a8 fs fs   c' fs, fs |
    fs'8 e fs   c b a |
    \break
    b8 g g   d' g, g |
    b8 g g   d'4 e8 |
    fs8 e fs   c b a |
    b8 g g   g4.
  }
  \break

  % Part B - simplified without slurs
  \repeat volta 2 {
    d'8 e fs   g4 a8 |
    g4 a8   g8 fs d |
    d8 e fs   g4 a8 |
    g8 fs d   fs4. |
    \break
    d8 e fs   g4 a8 |
    g4 a8   g8 fs d |
    fs8 e fs   c b a |
    b8 g g   g4.
  }
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}
