\version "2.24.0"
\language "english"
\header {
  title = "Auld Lang Syne"
  poet = "First verse, traditional"
  meter = "Other verses, Robert Burns (1759–1796)"
  composer = "Traditional"
  country = "Scotland"
  genre = "Folk"
}

\include "../../common/common-header.ily"

global = {
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  \partial 4 c4^\p |
  f4. f8 f4 a
  g4. f8 g4 a8(g)
  f4. f8 a4 c |
  d2. \bar"" d4 |
  c4. a8 a4 f |

  g4. f8 g4 a |
  \slurDashed f4.( d8) d4( c) |
  f2 a4\rest
  d4
  c4. a8 a4 f |
  g4. f8 g4 a8\rest a |

  a4. f8 a4. c8 |
  d2. \bar"" d4
  c4. a8 a4 f |
  g4. f8 g4 a |
  f4. d8 d4 c |
  f2  a4\rest \bar "|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##f
  Should auld ac -- quain -- tance be for -- got,
  And  nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  We twa ha’e run a -- boot the braes,
  And pu’d the gow -- ans fine;
  But_we’ve wan -- der’d mon -- y~a wea -- ry foot,
  Sin’ auld __ lang __ syne.
  \unset ignoreMelismata
  \set associatedVoice = "sopranos"

  For auld lang syne, my dear,
  For auld lang syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld lang syne.
}

sopWordsIII = \lyricmode {
  \set stanza = #"3. "
  We twa ha’e sport -- ed i’ the burn,
  Frae morn -- in’ sun till dine,
  But seas be -- tween us braid ba’e roared
  Sin’ auld __ lang __ syne.
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  And here’s a hand, my trust -- y frien’,
  And gie’s a hand o’ thine;
  We’ll tak’ a cup o’ kind -- ness yet,
  For auld __ lang __ syne.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
}





\score {
<<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \set Staff.midiInstrument = #"flute" \sopMusic >> }
    >>
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV

  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \midi {
    \tempo 2 = 90
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
  \layout {}
}