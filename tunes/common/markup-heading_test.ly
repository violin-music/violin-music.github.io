\version "2.24.4"

\include "./markup-heading.ly"



\markup \heading #1 "Heading 1"
\markup \heading #2 "Heading 2"
\markup \heading #3 "Heading 3"

\markup \sectionHeading #1 "My Section 1"
\markup \sectionHeading #2 "My Section 2"
\markup \sectionHeading #3 "My Section 3"



% THIS SHOWS THE USEFULNESS OF COLUMN
\markup {
  \column {
    \override #'(baseline-skip . 1.5) % Adjust the number (e.g., 1.5 staff spaces)
    { "Line 1" "Line 2" "Line 3" }
  }
}


\markup {
  \override #'(baseline-skip . 1.5)
  \column {
    "Line 1"
    "Line 2"
    "Line 3"
  }
}
