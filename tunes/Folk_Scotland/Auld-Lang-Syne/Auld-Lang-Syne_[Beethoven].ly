\version "2.24.4"
\language "deutsch"
\include "../../common/common-header.ily"

date = #(strftime "%e. %m. %Y" (localtime (current-time)))

\header {
  title = "Auld Lang Syne"
  composer = "Traditional"
  country = "Scotland"
  genre = "Folk"
  arranger = "arr. Ludwig van Beethoven (1770–1827)"
  poet = "Robert Burns (1759–1796)"
  tagline = ##f
  copyright = \markup { "Copyright © " \date " by CPDL" }
}


global = {
  \key f \major
  %  \numericTimeSignature
  \time 2/4
  \partial 8
  \tempo "Allegretto"
}

violdyn = {
  s8
  s2\p
  s2*6
  s2*8
  s16 s16*7
  s8*3 s8\f
  s8 s8*3
  s2*6
  s4. s8
  s2*4
  s2*2^"pizz."
  s4. s8\sf\fermata
  s2*4^"arco"
  s4 s4\>
  s4.\!\p
}

violin =  {
  \global
  r8
  f' r  f' a'
  b' r  b' d''
  c'' r  c'' f''
  g' r g' r
  R2
  r4 g'8. g'16
  g'8. e'16 f'8 c'
  \repeat volta 5 {
    f'8. f'16 f'8 a'
    g'8. f'16 g'8 r16 a'
    f' f'8. a'8 c''
    d''4. f''8
    c''8. a'16 a'8 f'
    g'8. f'16 g'8 r16 a'
    f'8. d'16 d'8 c'
    f'2~ f'16 f' g' a' b' f' a' f' b' f' a' f' b' f' d''8\noBeam
    c''16 a'8. a' f'16
    g'8. f'16 g'8 r16 a'
    b'16 a'8. a' c''16
    d''4. r16 f''
    c''8 a' a' f'
    g'8. f'16 g'8 r16 a'
    f'16 d'8. d' c'16
    f'4. as8~
    as g4 c'8~
    c' c'4 c'8~
    c' c''4 r8
  }
  \alternative {
    {
      r4 r8 c'
    }{
      f''8.[ f''16 f''8] a''
    }
  }
  g''8. g''16 g''8 b''
  a''8. g''16 a''8 d''^\fermata
  e'4 e' b' b' a' a'
  e''4 e''8 f''
  f'' r16 d'' d''8. c''16
  c''4.^\fermata
}
violinII = {
  \global
  r8
  a r a f'
  f' r f' f'
  f' r c'' a'
  c' r c' r
  R2
  r4  c'8. c'16
  c'8. g16 a8 c'8\noBeam
  \repeat volta 5 {
    a8. a16 a8 c'
    b8. b16 b8 r16 c'
    a16 a8. f'8 f'
    f'4. d''8
    a'8. f'16 f'8 a
    b8. a16 b8 r16 c'
    a8. d'16 d'8 c'
    a2~ a16 f' g' a' b' f' a' f' b' f' a' f' b' f' f'8\noBeam
    f'16 a'8. c' c'16
    c'4 c'8  r16 c'
    b'16 a'8. f' f'16
    f'4. r16 d''
    a'8 f' f' a
    b8. a16 b8 r16 c'
    a16 b8. b c'16
    a4. as8~
    as g4 c'8~
    c' c'4 c'8~
    c' c''4 r8
  }
  \alternative {
    {
      r4 r8 c' \break
    }{
      c''8.[ c''16 c''8] a''
    }
  }
  g''8. g''16 g''8 b''
  a''8. g''16 a''8 f'
  b4 b e' e' f' f' b' b'8 a'
  f'' r16 f' f'8. f'16
  f'4.
}

sopranoVoice =  {
  \global
  \dynamicUp
  \autoBeamOff
  r8 R2*6 r4 r8
  c'8
  \repeat volta 5 {
    f'8. f'16 f'8 a'
    g'8. f'16 g'8  r16 a'
    f'16 f'8. a'8 c''
    d''4. f''8
    c''8. a'16 a'8 f' g'8. f'16 g'8 r16 a'
    \slurDashed
    f'8.( d'16) d'8( c') f'4.
    \slurSolid
    r8 R2 r4 r8
    d''8\f^\markup "Refrain"
    c''16[ a'8.] a'[ f'16]
    g'8. f'16 g'8 r16 a'16
    b'16[ a'8.] a'8.[ c''16]
    d''4. r16 f''
    c''8 a' a' f'
    g'8. f'16 g'8 r16 a'16
    f'16[ d'8.] d'[ c'16]
    f'4. r8 |
    R2*3
  }
  \alternative {
    {r4 r8 c'}
    {R2 }
  }
  R2*7
  r4. \bar "|."
}

verseSopranoVoice = \lyricmode {
  % Liedtext folgt hier.
  \set stanza = "1."
  Should auld ac -- quaint -- ance be for -- got
  and nev -- er brought to mind?
  Should auld ac -- quaint -- ance be for -- got,
  and \set ignoreMelismata = ##t days o’ auld lang syne!
  \unset ignoreMelismata
}

verseSopranoA = \lyricmode {
  \set stanza = "2."
  And sure -- ly ye’ll be your pint stowp!
  And sure -- ly I’ll be mine!
  And_we’ll tak a cup o’ -- kind -- ness yet,
  for auld  lang  syne.

  For auld lang syne, my dear,
  for auld lang syne,
  we’ll tak a cup o’ kind -- ness yet
  for auld  lang  syne.
}

verseSopranoB = \lyricmode {
  \set stanza = "3."
  We twa hae run a -- bout the braes,
  And pu’d the gow -- ans fine;
  But_we’ve wan -- der’d mony a wea -- ry fit,
  sin’ auld lang syne.
}

verseSopranoC = \lyricmode {
  \set stanza = "4."
  We twa hae paid -- l’d in the burn,
  frae morn -- ing sun till dine;
  But seas be -- tween us braid hae roar’d,
  sin’ auld  lang  syne.
}
verseSopranoD = \lyricmode {
  \set stanza = "5."

  And there’s a hand, my trus -- ty fiere!
  And gie’s a hand o’ thine!
  And we’ll take a right gude- -- wil -- lie-waught,
  for auld lang syne.
}

tenorVoice =  {
  \global
  \dynamicUp
  \autoBeamOff
  r8 R2*6 r4 r8
  a8
  \repeat volta 5 {

    a8. a16 a8 c' b8. a16 b8 r16 c'
    a16 a8. c'8 a b4. d'8 a8. c'16 c'8 a b8. a16 b8 r16 a
    \slurDashed a8.( b16)  b8( a)
    \slurSolid a4.
    r8 R2 r4 r8
    b8\f
    a16[ c'8.] c'4
    c'8. c'16 c'8 r16 c'16
    c'4 c'8.[ a16]
    b4. r16 d'16
    a8 c'  c'8 a
    b8. a16 b8 r16 a16
    a16[ b8.] b[ a16]
    a4. r8  |
    R2*3
  }
  \alternative {
    {r4 r8 a}
    {R2 }
  }
  R2*7
  r4.
}

verseTenorVoice = \lyricmode {

}

bassVoice = {
  \global
  \dynamicUp
  \autoBeamOff
  r8 R2*6 r4 r8
  f8
  \repeat volta 5 {
    f8. f16 f8
    f f8. f16 f8 r16 f
    f16 f8. f8 f b,4. b,8 c8. c16 c8 c c8. c16 c8 r16 f
    \slurDashed f8.( b,16) b,8( f)
    \slurSolid f4.
    r8 R2 r4 r8
    b,8\f
    f4 f
    e8. d16 e8 r16 f
    g16[ f8.] f4
    b,4. r16 b,16
    c8 c c c8
    c8. c16 c8 r16 f |
    d16[ b,8.] b,[ f16] f4. r8
    R2*3
  }
  \alternative {
    {r4 r8 f}
    {R2 }
  }
  R2*7
  r4.

}

verseBassVoice = \lyricmode {
  % Liedtext folgt hier.

}

cellodyn = {
  s8
  s2\p
  s2*6
  s2*8^"pizz."
  s16 s16*7^"arco"
  s8*3 s8\f
  s8 s8*3^"pizz."
  s2*6
  s4. s8^"arco"
  s2*4
  s2*2^"pizz."
  s4. s8\sf\fermata
  s2*4^"arco"
  s4 s4\>
  s4.\!\p
}

cello = {
  \global
  r8
  f, r f, f, d r d b, a, r a, f, c r c r
  R2
  <c, g,>8.  q16 r4
  <c, g,>8.  q16 f,8 r
  \repeat volta 5 {
    f, f f, f c c' c c' f, f f, f b, b b, b c c' c c' c, c c, c f, b b, f'
    f[ f' f] r
    r16 f g a b f a f b f a f b f  b8 \noBeam
    r f f, f e c' e c'
    r c'[ f f']
    b,[ b b, b]
    c[ c' c c']
    c c' c, c d, b, b f'
    f[ f' f] f~
    f4. e8(
    f e a g)
    c' c'4 r8
  }
  \alternative
  {
    {R2}
    {
      f'8.[ f'16  f'8] d'
    }
  }

  c'8.[ c'16  c'8] c'
  d'8.[ d'16 f'8] b,
  <c, g,>4 q q q
  <c, a,>q
  <c, g,>4 q8
  f,
  d, r16 b b8. a16
  <f a>4.\fermata
}

pianodyn = {
  s8\p
  s2*4
  s4\p
  s4
  s2*2
  s2*8
  s16 s16*7
  s8*3 s8\f
  s8 s8*3
  s2*6
  s4. s8
  s2*4
  s2*2
  s4. s8\sf
  s2*4
  s4 s4\>
  s4.\!\p
}

right =  {
  \global
  c''8
  f''8.[ f''16  f''8]  a''
  b''8.[ a''16 b''8] d'''
  c'''8.[ c'''16  c'''8] f'''
  g''8.[ g''16 g''8] a'
  g'8. g'16 r4
  g'8. g'16 r4
  c''8. c''16 f'8 c''
  f''8 r f'' a'' g'' r g'' r f'' r a'' c''' d'''4. f'''8 c''' r a'' f'' g'' r g'' r f''8. d''16 d''8 c''
  f''4~ f''16 c'' d''16 e''
  f''8. d''16 d''8-. c''-.
  d''[-. c''-.  d''-.]  d'''
  c''' r a'' r
  g'' r g'' r
  b'' r a''8. c'''16
  d'''4 b''16 c''' d''' f'''
  c'''8 a'' a'' f''
  g'' r8 g'' r
  f''8 r d''8. c''16
  f''4. d'16 e'
  f' d'8. d' c'16
  f'8. e'16 a'8. g'16
  f''8. e''16 a''8. g''16
  r g'' e'' c'' b' a' c'' b'
  f''8.[ f''16  f''8] a''
  g''8.[ g''16 g''8] b''
  a''8.[ g''16  a''8] < f'' b'' d'''>\fermata
  b'8. g'16 g'8 e'
  r16 c' e' g' e' g' h' c''
  r f' a' c'' a' c'' e'' f''
  r e'' g'' b'' e'''8 f'''8
  f'''16 f'''8. d''' c'''16
  f'''4.\fermata
}
rightII =  {
  \global
  a'8 a'8.[ a'16 a'8] f''
  f''8.[ f''16 f''8] f''
  f''8.[ f''16 f''8] a''
  e''8.[ e''16 e''8] a'
  c'8. c'16 r4 c'8. c'16 r4 e'8. e'16 f'8 a' a'8 r a' c'' b' r b' r a' r f'' a'' b''4. d'''8 a'' r f'' a' b' r b' r a'8. b'16 b'8 a'
  a'4 ~ a'16 s s s
  s2
  s4 s8 b''
  a'' r c'' r c'' r c'' r c'' r c''8. a''16 b''4 b''16 c''' d''' d''' a''8 f'' f'' a' b' r8 b' r a'8 r b'8. a'16 a'4. d'16 e' f' d'8. d' c'16 f'8. e'16 a'8. g'16 c''8. c''16 c''8. c''16 r g'' e'' c'' b' a' c'' b'
  c''8.[ c''16 c''8] c''
  c''8.[ c''16 c''8] g''
  f''8.[ e''16 f''8] s
  s2*3
  s4
  \autoBeamOn
  b''8 a''
  a''16 a''8. b'' a''16
  a''4.
}

left =  {
  \global
  % Die Noten folgen hier.
  f8
  f8.[ f16 f8] f
  d8.[ c16 d8] b,
  a,8.[ a,16 a,8] f,
  c8.[ c16 c8] r
  r4 g8. g16
  r4 g8. g16
  r8. g16 a8 f
  \repeat volta 5 {
    f8 r f f
    c r c r f r f f
    b,4. b,8
    c r c c c r c r
    f8. b,16 b,8 f
    f4. r8 \clef "G"
    r8. b'16 b'8-. a'-.
    b'[-. a'-.  b'-.] \clef "bass" b
    f r f r e r e r g r
    f8. f16
    f4 r8 b
    c' c' c' c' c r c r d r b,8. f16
    f4. r8
    r b, h, c d c f e
    a g \clef "G" c' b'
  }
  \alternative {
    {R2}
    {
      a'8.[ a'16  a'8] f'
    }
  }
  c'8.[ c'16 c'8] c' \clef "bass"
  d'8.[ d'16 d'8] b8 \fermata
  R2
  \autoBeamOn
  b8. g16 g8 e c8. a,16 a,8 f, c8. g16 g8 f d des b,8. f16
  f4.
}
leftb =  {
  \global
  % Die Noten folgen hier.
  f,8
  f,8.[ f,16 f,8] f,
  d,8.[ c,16 d,8] b,,
  a,,8.[ a,,16 a,,8] f,,
  c,8.[ c,16 c,8] r
  r4 c8.\p c16
  r4 c8. c16
  r8. c16 f8 f
  \repeat volta 5 {
    f,8 r f, f,
    c, r c, r f, r f, f,
    b,,4. b,,8
    c, r c, c, c, r c, r
    f,8. b,,16 b,,8 f,
    f,4. r8
    r8. s16 s8 s
    s s s b, f, r f, r e, r e, r g, r
    f,8. f,16
    b,4 r8 b, c c c c c, r c, r d, r b,,8. f,16 f,4. r8
    r s s s
    s2*2
  }
  \alternative {
    {R2}
    {s2}
  }
  s8. s16 s8 s
  d'8. d16 d8 b,
  R2
  s2*2
  s8. c16 c8 f,
  d, des, b,,8. f,16
  f,4.\fermata \sustainOn \bar "|."
}

violinPart = \new Staff \with {
  instrumentName = "Violino"
  midiInstrument = "violin"
  printPartCombineTexts = ##f
} <<
  \new Voice \partCombine \violin \violinII
  \new Voice \violdyn
>>

sopranoVoicePart = \new Staff = "soprStaff" \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} <<
  \new Voice = "sopr"    \sopranoVoice
  \new Lyrics \lyricsto "sopr" \verseSopranoVoice
  \new Lyrics \lyricsto "sopr"  \verseSopranoA
  \new Lyrics \with { alignAboveContext = "soprStaff" \override VerticalAxisGroup.staff-affinity = #CENTER }
  \lyricsto "sopr"   \verseSopranoB
  \new Lyrics  \with { \override VerticalAxisGroup.staff-affinity = #CENTER }
  \lyricsto "sopr"  \verseSopranoC
  % \new Lyrics \lyricsto "sopr"  \verseSopranoD
>>
tenorVoicePart = \new Staff \with {
  instrumentName = "Tenore"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
%\addlyrics { \verseSopranoVoice }
%\addlyrics { \verseSopranoA }
%% \addlyrics { \verseSopranoB}
%\addlyrics { \verseSopranoC}
%% \addlyrics { \verseSopranoD}

bassVoicePart = \new Staff = "bassStaff" \with {
  instrumentName = "Basso"
  midiInstrument = "choir aahs"
} <<
  %  \new Voice {\voiceOne \tenorVoice }
  \new Voice = "bass" {
    %    \voiceTwo
    \clef "bass" \bassVoice
  }
  \new Lyrics \with { alignBelowContext = "bassStaff" } \lyricsto "sopr"   \verseSopranoD
>>
% \addlyrics { \verseBassVoice }

celloPart = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
} <<
  \new Voice \clef bass \cello
  \new Voice \cellodyn
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Pianoforte"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    printPartCombineTexts = ##f
  } \partCombine \right \rightII
  \new Dynamics \pianodyn
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
    printPartCombineTexts = ##f
  } <<
    \new Voice {   \clef bass \partCombine \left \leftb }
    \new Voice { s8 s2*15 \clef "G"}
  >>
>>

\score {

  <<
    \violinPart
    \celloPart
    \new ChoirStaff <<
      \set Score.skipBars = ##t
      \sopranoVoicePart
      \tenorVoicePart
      \bassVoicePart
    >>
    \pianoPart
  >>
  \layout {
    \context {
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \set Score.skipBars = ##t
      \sopranoVoicePart
      \tenorVoicePart
      \bassVoicePart
    >>
    \layout {
      #(layout-set-staff-size 18.2)
      \context {
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}
\bookpart {
  \score {
    <<
      \violinPart
    >>
    \layout {
      #(layout-set-staff-size 20)
    }
  }
  \score {
    <<
      \celloPart
    >>
    \layout {
      #(layout-set-staff-size 20)
    }
  }
}