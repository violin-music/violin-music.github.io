\version "2.24.4"
\language "english"

\include "interval_engraver.ly"

\header {
  title = "Automatic Interval Engraver Test Suite"
  subtitle = "Testing bracket rendering and positioning"
}

\paper {
  ragged-right = ##f
}

%=============================================
% Test 1: C Major Scale - BELOW position (default)
%=============================================

\markup \bold "Example 1: C Major Scale (BELOW position - default)"
\markup \smaller "Expected: 1-1-½-1-1-1-½ pattern with labels below brackets"

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

%=============================================
% Test 2: C Major Scale - MIDDLE position
%=============================================

\markup \vspace #1
\markup \bold "Example 2: C Major Scale (MIDDLE position)"
\markup \smaller "Expected: Labels centered within bracket gaps"

#(set! intervalPosition 'MIDDLE)

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c'4 d' e' f' g' a' b' c''
  }
  \layout { }
}

#(set! intervalPosition 'BELOW)

%=============================================
% Test 3: Chromatic Scale
%=============================================

\markup \vspace #1
\markup \bold "Example 3: Chromatic Scale"
\markup \smaller "Expected: All triangular brackets (½ intervals)"

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c'4 cs' d' ds' e' f' fs' g'
  }
  \layout { }
}

%=============================================
% Test 4: With Rests
%=============================================

\markup \vspace #1
\markup \bold "Example 4: With Rests"
\markup \smaller "Expected: Interval chain breaks at rests (no brackets spanning over rests)"

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c'4 d' r4 e' f' g' r4 a'
  }
  \layout { }
}

%=============================================
% Test 5: Large Intervals
%=============================================

\markup \vspace #1
\markup \bold "Example 5: Large Intervals"
\markup \smaller "Expected: Labels showing 2, 1½, 3 for larger intervals"

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c'4 e' g' b' c''
  }
  \layout { }
}

%=============================================
% Test 6: Mixed Ascending and Descending
%=============================================

\markup \vspace #1
\markup \bold "Example 6: Descending scale"
\markup \smaller "Expected: Intervals calculated regardless of direction"

\score {
  \new Staff \with {
    \consists #(interval-engraver)
  } {
    \cadenzaOn
    \time 4/4
    c''4 b' a' g' f' e' d' c'
  }
  \layout { }
}
