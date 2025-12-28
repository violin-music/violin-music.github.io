% inclusion-logic_test_tune.ly
\include "inclusion-logic.ily"

\header {
  title = "Tune in Original Key"
}

music = \relative c' {
  \key a \minor
  a4 b c d | e2 e |
  f4 e d b | a1 |
}

% This renders only when you compile tune.ly directly
\scoreIfStandalone \music