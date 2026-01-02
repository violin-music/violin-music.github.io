\version "2.7.40"
\include "english.ly"

\header {
  composer = "Trad."
  crossRefNumber = "1"
  footnotes = ""
  tagline = "Lily was here 2.19.28 -- automatically converted from ABC"
  title = "Tri martolod (Trad. Breton)"
}
wordsdefaultVA = \lyricmode {
  "\"Tri" martolod yaouank Tra la la, la la la "la\""
  "\"Tri" martolod yaouank o voned da "veaji�\""
  "\"Tri" martolod yaouank Tra la la, la la la "la\""
  "\"Tri" martolod yaouank o voned da "veaji�\""
  "\"O" voned da veaji� ge, o voned da "veaji�\""
  "\"O" voned da veaji� ge, o voned da "veaji�\""
}
voicedefault =  \relative c' {

  \time 4/4
  \key bf \major
  \partial 4.
  f8      ef    d    c4    c    bf
      ef8    d    c4    c8    bf16    a    g8      a
      bf8    g    c4    c    bf8    bf      ef    d
      \break
  c8    c    bf4    c8      g      g    g    c4    c    bf
      ef8    d    c4    c8    bf16    a    g8      a
      bf8    a    c4    c    bf8    bf      ef    d
  c8    c    bf4    c8      g      c8.    bf16    c8    d
  ef8    ef    d    ef      f8.    ef16    d8    c    ef4
  d8      g,      c8.    bf16    c8    d    ef    ef    d
  ef8      f8.    ef16    d8    c    ef4    d8          r4
  f8      ef    d    c4    c    bf      ef8    d
  c4    c8    bf16    a    g8      a      bf    g    c4
  c4    bf8    bf      ef    d    c    c    bf4    c8      g
      g8    g    c4    c    bf      ef8    d    c4
  c8    bf16    a    g8      a      bf    a    c4    c
  bf8    bf      ef    d    c    c    bf4    c8      g
      c8.    bf16    c8    d    ef    ef    d    ef
  f8.    ef16    d8    c    ef4    d8      g,      c8.    bf16
  c8    d    ef    ef    d    ef      f8.    ef16    d8
  c8    ef4    d8   ~        d2
}

\score{
  <<

    \context Staff="default"
    {
      \voicedefault
    }

 %   \addlyrics {      \wordsdefaultVA    }
  >>
  \layout {
  }
  \midi {}
}
