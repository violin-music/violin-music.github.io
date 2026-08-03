\version "2.24"
\language "english"

\header {
  title = "Broken Thirds"
  subtitle = \markup {
    "From" \concat { "1" \super "st" } " to " \concat { "5" \super "th" } " Position"
  }
}

chordNames = \chordmode {
  | c2 d2:m
  | e2:m f2
  | g2 d2:m
  | c2  b2:dim 
}

broken_Thirds = {
      \relative c'' {

      <c\glide-2>4  <e-2>4

      d-1 f-3

      <e\glide-2>4  <g-2>4

      f-1 a-3

      <g\glide-2>4  <e-2>4

      f d

      <e\glide-2>4  <c-2>4

      d b
    }
}

\score {
  <<
    \new ChordNames { \chordNames }

    \new Staff {
      \broken_Thirds
    }
  >>
  \layout {
    ragged-right = ##f
  }
}




\score {
  \new Staff {

  }
  \layout {
    ragged-right = ##f
  }
}