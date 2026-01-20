\version "2.24.4"
\language "english"

\header {
  title = "C Major Scale Intervals"
}
    \paper {
  ragged-right = ##f   % ← stretches staff to the right margin
}

interval =
#(define-music-function (label) (string?)
   #{
     \once \override Score.TextMark.self-alignment-X = #CENTER
     \once \override Score.TextMark.direction = #DOWN
     \once \override Score.TextMark.padding = #2
     \textMark \markup {
       \override #'(baseline-skip . 0.5)
       \center-column {
         \combine
           \combine
             \translate #'(-2 . 1.2) \draw-line #'(0 . 1)
             \translate #'(2 . 1.2) \draw-line #'(0 . 1)
           \translate #'(-2 . 1.2) \draw-line #'(4 . 0)
         \small #label
       }
     }
   #})

\score {
  \relative c' {
    \time 4/4
    c4 \interval "1" d4 \interval "1" e4 \interval "½" f4 \interval "1"
    g4 \interval "1" a4 \interval "1" b4 \interval "½" c
  }
  \layout { }
}
