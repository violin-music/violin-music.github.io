\version "2.24.0"
\language "english"

%\include "mylib.ily"
\include "../../common/common-header.ily"

rit = \markup { \italic "rit. " }


\header {
  title = "Russian Fantasia No. 2"
  composer = "Leo Portnoff"
  country  = "Ukraine"
  genre = "Classical"
}

allargando = \markup {\italic "allargando"}
cadenzaAdLib = \markup {\italic #"Cadenza ad lib."}
espressivoTxt = \markup {\italic "espressivo"}
pMaEspressivo = \markup {\dynamic "p" \italic "ma espressivo"}
pocoRit = \markup {\italic #"poco rit."}
simile = \markup {\italic #"simile"}
tenutoTxt = \markup {\italic "tenuto"}

titleMovementI = #""

globalMovementI = {
  \time 4/4
  \tempo "Andante espressivo" 4=72
  \key d \minor
}

violinMovementI = \relative g {
  | a4_\espressivoTxt\glissando( cs8-1 d) e4( cs8\glissando a-1)
  | d4-4 d8-0( e) f4 e8( d)
  | e4 e8( f) g4 f8( e)
  \break
  | a8-2( d,-0) d-- d-- d2
  
  
  
  \repeat volta 2 {
    g4 g8( bf) d4 c8( bf) | d-1( a-0) a-2 a a4 g8 f-2 |
    a-4( e) e-- f-- g4 f8( e) | a-2( d,-0) d-2 d d2
  }
  
  \break
    
  a'4( cs8 d-1) e4( cs8-2 a) | d4-1 d8( e) f4 e8( d) |
  e4 e8( f) g4 f8( e) | a8\flageolet( d,-1) d-- d-- d4. d8-3
  
  \break
  
  \repeat volta 2 {
    g4-2\< g8( bf\!) d4-2\> c8( bf\!) |
    d8\>( a\!) a--( a--) a4 g8-2( f) |
    a8-1\>( e-0\!) e---2 f-- g4 f8( e) |
    a8\flageolet( d,-1) d-- d-- d2\fermata
  }
  
  \break
  
  \cadenzaOn
  a,4_\fermata^\cadenzaAdLib cs8[( d]) e[( cs) e f] g[( e) g a] \bar ""
  bf[\< a cs d] e-4[ cs\! e-0 g] bf4\fermata\> a\fermata\!
  
  \break
  
  \cadenzaOff 
  \bar "||" 
  \time 2/4 
  \tempo "Allegretto" 4=112
  \repeat volta 2 {
    d,8-.-3\p d-. d-. d-. | cs4-> a-> | e'8-.-2 e-. e-. e-. | f4-> d->
  }
  \repeat unfold 4 a'8-. | bf4-> g->-2 | \repeat unfold 4 g8 | a4
  \once \override Hairpin.to-barline = ##f
  f\<(
  \repeat volta 2 {
    a8-1\!) a-. a-. a-. | g4 e | a8 g f e | d2
  }
  \repeat volta 2 {
    <d f,>8\downbow a,16\downbow a a8 <d' f,> |
    <cs e,> a, <a' e> a, |
    <a' e'>8\downbow a,16\downbow a a8 <a' e'> | <a f'> d, d' d,
  }
  \repeat volta 2 {
    <a'' c,>8\downbow d,,16\downbow d d8 <c' a'> |
    <d bf'> d, <bf' g'> d, |
    <bf' g'>8\downbow c,16\downbow c c8 <bf' g'> |
    <c a'> f, <c' f> f, |
    a'8\downbow <a, d,>16\downbow <a d,> <a d,>8 a' |
     <g bf,>8 g,, <bf' e> g, | <a' a'> <a g'> <a f'> <a e'> | <d d,>2
  }
  \repeat volta 2 {
    d16--\f\downbow a-- f-- a-- d-- a-- d-- a-- |
    cs a e a \repeat unfold 2 {cs a} |
    e'-4 a, g a \repeat unfold 2 {e' a,} |
    f'-4 a,-0 f a \repeat unfold 2 {d a} |
  }
  \repeat volta 2 {
    a'16( fs-1) d fs a( fs) d fs | bf( g-2) d g bf( g bf a) |
    \repeat percent 2 { g( e) c e } | a( f-1) c f a( f a g) |
    a( f) d f \repeat unfold 2 {a( f)} |
    g( e) bf e \repeat unfold 2 {g( e)} |
    a( a,) g' a, f' a, e' a,
  }
  \alternative {
    {d a e' a, f' a, g'( a,)} {<d d,>2}
  }
  \bar "|."
}

violinMovementIViolin = \new Voice {
  \cueDuring "pianoUpMovementI" #DOWN R1*2
  \violinMovementI
}
violinMovementIPiano = \new Voice {
  R1*2 | \violinMovementI
}

pianoUpMovementI = \new Voice \relative d'' {
  <d f, d>2\f <cs f, cs> | <gs d gs,>1\> |
  r8\p <a e cs>\arpeggio <cs a e>\arpeggio <d a f>\arpeggio r8 <e cs a>\arpeggio <cs a e>\arpeggio <a e cs>\arpeggio |
  r8 <a f d>\arpeggio <d a f>\arpeggio <e cs a>\arpeggio r8 <f d a>\arpeggio <e cs a>\arpeggio <d a f>\arpeggio |
  r8 <bf g e>\arpeggio <e bf g>\arpeggio <f bf, g>\arpeggio r8 <g cs, bf> <f cs a> <e cs g> |
  r8 <a, f d> <d a f> <f d a> <a f d> <f d a> <d a f> <a f d>
  \repeat volta 2 {
    r8 <d, bf g>\arpeggio <g d bf>\arpeggio <bf g d>\arpeggio r8 <d bf g>\arpeggio <c a d,>\arpeggio <bf g d>\arpeggio |
    r8 <a f d> <d a f> <f d a> r8 <a f d> <g cs, bf> <f d a> | r8 <a e cs a> <e cs g> <f cs a> r8 <g cs, bf> <f cs a> <e cs g> |
    r8 <a, f d> <d a f> <a f d> <d a f>2
  }
  \repeat unfold 2 {r16 a,( cs e a e cs a)} |
  \repeat unfold 2 {r16 a( d f a f d a)} |
  r16 bf( d e bf' e, d bf) r16 a( cs g' a g cs, a) |
  \repeat unfold 2 { r16 a( d f a f d a) }
  \repeat volta 2 {
    r16 bf( d g bf g d bf) r16 d( g bf d bf g d) |
    r16 d( f a d a f d) r16 a( d f a f d a) |
    \repeat unfold 2 {r16 a( cs g' a g cs, a)} |
    r16 a( d f a f d a~) <a d f>2\fermata
  }
  \cadenzaOn <cs e a>4\fermata s4*11 \cadenzaOff \bar "||" \time 2/4
  \repeat volta 2 {
    r8\p <a' f>-. r <a d,> | r <a cs,> r <a e cs> |
    \repeat unfold 2 {r <a g e>} | \repeat unfold 2 {r8 <a f d>}
  }
  \repeat unfold 2 {r8 <a d, c>} | \repeat unfold 2 {r8 <g d bf>} |
  \repeat unfold 2 {r8 <g c, bf>} | \repeat unfold 2 {r8 <f c a>} |
  \repeat volta 2 {
    \repeat unfold 2 {r8 <a f d>} | r8 <bf g d> r <bf e, d> |
    \repeat unfold 2 {r8 <a g cs,>} | <a f d>2
  }
  \repeat volta 2 {
    %\change Staff = "down" \voiceOne
    <d, a f>8 r r <d a f> | <cs a e> r <a e> r
    \repeat unfold 2 {<a cs e>8 r} |
    <a d f> r  <f a d> r
    %\change Staff = "up" \oneVoice
  }
  \repeat volta 2 {
    <a' fs d>8 r r <a fs d> | <bf g d> r <g d bf> r |
    <g e c> r r <g e c> | <a f c> r r <f c a> | <a d, a> r r <a d, a> |
    <bf d, bf> r <g d bf> r | <a f d> r r <a g cs,> | <a f d>2
  }
  \repeat volta 2 {
    << {\voiceOne r8\f <a f> r <a f> | r <a e> r <e cs> |
        r <g a> r <g a> | r <a d> r <a f>}
       \new Voice {\voiceTwo d,8 d d d | cs4 a | e'8 e e e | f4 d} >>
  }
  \repeat volta 2 {
    << {\voiceOne r8 <d' c> r <d c> | r <d g> r <d bf> |
        r <c bf> r <c bf> | r <c f> r <c a > | a a a a | g4 e }
       \new Voice {\voiceTwo a8 a a a | bf4 g | g8 g g g | a4 f |
                   r8 <f d> r <f d> | r <d bf> r <d bf>} >>
    \oneVoice
    \once \override TextSpanner.bound-details.left.text = \pocoRit
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \textSpannerDown
    <f a>8 \startTextSpan <e g> <d f> <cs e>
  }
  \alternative {
    { d8 <e cs> <f d> <g e> \stopTextSpan } { <f d>2_\rit }
  }
  \bar "|."
}

\addQuote "pianoUpMovementI" \pianoUpMovementI

pianoDownMovementI = \new Voice \relative b {
  bf2 a4. f8 | << {\voiceOne f2 e} \new Voice {\voiceTwo bf1} >> \oneVoice |
  a,2 a' | d, a' | g a | d, d' |
  \repeat volta 2 { g,2 g' | d d' | a a, | d d, }
  a' g' | f d | g, a | d, d'
  \repeat volta 2 { g, g' | f d | e a, | d d,\fermata }
  \cadenzaOn a'4\fermata s4*11 \cadenzaOff \bar "||" \time 2/4
  \repeat volta 2 {
    d8 a' f a | e a a, a' | cs, a' a, a' | d,4 a'
  }
  fs4 d | g f | e c | f e |
  \repeat volta 2 {
    d8 r f r | e r g r | a r a, r | d a d,4
  }
  \repeat volta 2 {
    \voiceTwo d'8 r r d | a r a r | <a a,> r r a, |
    d r d r \oneVoice
  }
  \repeat volta 2 {
    d'8 r r d | g r g, r | c r r c | f r r f, | f' r r f |
    g r g, r | a r r a | d2
  }
  \repeat volta 2 {
    d8 a' f a | e a a, a' | cs, a' a, a' | d, a' f a
  }
  \repeat volta 2 {
    fs d' d, d' | g, d' f, d' | e, c' c, c' | f, c' e, c' |
    d, r f r | e r g r | <a a,> a a, a'
  }
  \alternative {
    {d,8 r r4} {d8 a d,4}
  }
  \bar "|."
}

%%% ------------


\book {
  \bookOutputName "Portnoff_Russian_Fantasia-2_Piano"

  \score {
    <<
      \new Staff \with {
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
      } { \globalMovementI \violinMovementIPiano }
      \new PianoStaff <<
        \new Staff = "up" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovementI \pianoUpMovementI
        }
        \new Staff = "down" \with {
          \accidentalStyle modern-cautionary
        } {
          \globalMovementI \clef bass \pianoDownMovementI
        }
      >>
    >>
    \layout {
%%      indent = #0
    }
    \header {
      piece = \titleMovementI
    }
  }
}


\book {
  \bookOutputName "Portnoff_Russian-Fantasia-2_Violin"
  
  \score {
    \new Staff \with {
      \accidentalStyle modern-cautionary
    } {
      \compressEmptyMeasures
      \globalMovementI \violinMovementIViolin
    }
    \layout {
%%      indent = #0
    }
    \header {
      piece = \titleMovementI
    }
  }
}

\include "articulate.ly"

\book {
  \bookOutputName "Portnoff_Russian_Fantasia-2"

  \score {
    \articulate \unfoldRepeats
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = #"violin"
      } { \globalMovementI   \violinMovementIPiano
        }
      \new PianoStaff \with {
        midiInstrument = #"acoustic grand"
      } <<
        \new Staff = "up" {
          \globalMovementI \pianoUpMovementI
        }
        \new Staff = "down" {
          \globalMovementI \pianoDownMovementI
        }
      >>
    >>
    \midi{}
  }
}
