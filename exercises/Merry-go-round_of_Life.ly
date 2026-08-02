\version "2.26"
\language "english"

\header {
  title    = "Merry-Go-Round of Life"
  subtitle = "from Howl's Moving Castle"
  composer = "Joe Hisaishi"
  video    = ""
}

global = {
  \key bf \major
  \time 3/4
  \tempo "Vivace" 4 = 132
}

chordNames = \chordmode {
  g2.:m   |  g2.:m     |  d2.    |  g2.:m7     |
  g2.:m   |  c2.:m9    |  d2.:7  |  g2.:m7     | 
  g2.:m   |  c2.:m9    |  f2.:7  |  bf2.:maj7  | 
  d2.:m   |  e2.:m7    |  a2.:7  |  bf2.:maj7  | 
  d2.:m   |  bf2.:maj7 |  a2.:7  |  d2.:m      | 
}

melody = \relative c' {
  \global

  R2. R2. R2. R2.
  \break

  |  d4 g4( bf4) 
  |  d2 d4
  |  c4 bf4 a4
  |  bf2.
  \break
  
  |  g4 bf d
  |  g2 g4
  |  g4 f ef4 
  | f2.-3
  
  \break
  
  | a,4 ( d4 f4) |
  | a2 g4
  | f4 e4 f4 
  | g2( f4)
  \break
  e2( d4) |
  % 20
  c4 bf4 c4 |
  % 21
  d4 c4 g4 |
  % 22
  a2. 
  
  \break

  
  %{
  g4-1( a4 bf4-3) |
  % 28
  d2-2 ef4 |
  % 29
  f4( g4 f8 ef8) |
  % 30
  d2 g,4 |
  % 31
  c4( bf8 a8 bf8 d8) |
  % 32
  g2( f4) |
  % 33
  f4( ef8 e8 d8 ef8) |
  % 34
  g2( f4) |

  % 35
  ef4 d8( c8 b8 c8) |
  % 36
  d4 c8( d8 c8 bf8) |
  % 37
  a4.( bf8 b4) |
  % 38
  d4 ds4 e4 |
  % 39
  g4( fs4 d4) |
  % 40
  d2( c4) |
  % 41
  fs,4( g4 d'4) |

  % 42
  d2( c4) |
  % 43
  bf4( a4 g4) |
  % 44
  a4( bf4 c4) |
  % 45
  f,2 g4 |
  % 46
  d'2( c4) |
  % 47
  bf4( a4 bf4) |
  % 48
  d2.( |
  % 49
  d2) c4 |
  % 50
  c8[ \tuplet 3/2 { df8 c8 b8 } ] c4 |
  % 51
  ef4( df4 c4) |

  % 52
  fs,2( g4) |
  % 53
  f2 g4 |
  % 54
  d'2-3 ef4 |
  % 55
  ef4 d4-2 c4-1 |
  % 56
  df2.-2( |
  % 57
  df2) c4^\markup { "0" } |
  % 58
  fs2 g4 |
  % 59
  gs4( a4 bf4) |

  % 60
  d4(
  \tuplet 3/2 { c8 df8 c8 }
  \tuplet 3/2 { bf8 cf8 bf8 } |
  % 61
  \tuplet 3/2 { a8 bf8 a8 }
  \tuplet 3/2 { g8 af8 g8 }
  \tuplet 3/2 { f8 gf8 f8 } |
  % 62
  \tuplet 3/2 { ef8 e8 ef8 }
  \tuplet 3/2 { d8 ef8 d8 }
  \tuplet 3/2 { c8 df8 c8 } |
  % 63
  e2 f4 |
  % 64
  e4 f4 g4 |

  % 65
  \tuplet 3/2 { af8 g8 fs8 }
  \tuplet 3/2 { gf8 f8 ef8 }
  \tuplet 3/2 { ef8 df8 c8 } |
  % 66
  e4( fs4 g4) |
  % 67
  bf4( a4 g4) |
  % 68
  f4( fs4 g4) |
  % 69
  a2 c4 |
  % 70
  ef2( d4) |
  % 71
  d2( c4) |

  % 72
  fs,4( gs4 a4) |
  % 73
  d2 c4 |
  % 74
  bf4 a4 g4 |
  % 75
  fs4( g8 fs8 e4) |
  % 76
  d2\fermata c4 |
  % 77
  c2.( |
  % 78
  c2) g4 \bar "||" \tempo "A Tempo" 4 = 132 |
  % 79
  c4 g'4( a4) |
  % 80
  d2 e4 |
  % 81
  c4 bf4 a4 |
  % 82
  g2. |
  % 83
  g4-1( a4 bf4-3) |
  % 84
  d2-2 ef4 |


  %}
  \bar "|."
}

\score {
  <<
    \new ChordNames { \chordNames }
    \new Staff      { \melody }
  >>
  \layout { indent=0 }
  \midi { }
}
