% include-score-if-standalone_test_tune_(Dm).ly
\version "2.24.4"
\include "./include-score-if-standalone_test_tune.ly"

\header {
  title = "Tune in D Minor"
  subtitle = "(Transposed from A Minor)"
}

targetKey = d

\score {
  \new Staff {
    \transpose \originalKey \targetKey' { \myMusic }
  }
  \layout { }
}