\version "2.24.4"

\include "./markup-position.ly"


% --- Usage ---

\markup {
  \column {
    \line { \my-round-box #0.5 #0.4 #0.1 "Standard" }
    \vspace #1
    \line { \my-round-box #2.0 #0.8 #0.2 "Large Radius" }
    \vspace #1
    \line { \my-round-box #5.0 #1.0 #0.1 "Pill Shape" }
    \vspace #1
    \position {A}
    \position {AB}
    \position {ABC}
  }
}


\score {
  <<
    \new Staff {
      \relative c' {
        e4_1_\markup  "A"
        g4_1_\markup  "B"
      }
    }

  >>
  \layout { }
}

\score {
  <<
    \new Staff {
      \relative c' {
        e4-1_\markup \position "1"
        g4-1_\markup \position "3"
      }
    }

  >>
  \layout { }
}


melody = \relative c' {  e2_1 f g_1 b-1  }

positions = \lyricmode {
  \markup \position "1"
  \skip2
  \markup \position "3"
}

\score {
  <<
    \new Staff { \melody }
    \addlyrics { \positions }
  >>
  \layout { }
}



