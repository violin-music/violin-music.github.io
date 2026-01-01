% inclusion-logic_test_tune_(Dm).ly
\version "2.24.4"
\include "./inclusion-logic_test_tune.ly"

\header {
  title = "Tune in D Minor"
  subtitle = "(Transposed from A Minor)"
}

\score {
  \new Staff {
    \transpose a d { \music }
  }
  \layout { }
}