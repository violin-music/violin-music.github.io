\version "2.24.0"
\language "english"

\header {
   title = "Je cherche après Titine"
   subtitle = "Version 2"
   composer = "Leo Daniderff"
   style = "musette"
   copyright = "All Rights Reserved"
   tagline = ""
}

AvoiceAA = \relative c''{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #""
    %\clef bass
    %staffkeysig
    \key ef \major 
    %bartimesig: 
    \time 2/4 
    \partial 8*1
    \tempo "Allegro" 4 = 120  g8 \mf      | % 1
    af g fs g af g r g      | % 2
    af g c g g16 fs f r r8 f      | % 3
    g f d f f ef r ef      | % 4
    ef d b d c c'16 b bf8 a      | % 5
    af4.-^  g8( c,) c'16 b bf8 a      | % 6
    af4.-^  g8( c) r c-^  r      | % 7
    %barkeysig: 
    \key c \major 
    \grace{\stemUp g,16  [ a b  ]  } \stemNeutral c8 e g,16 g g r \grace{\stemUp g  [ a b  ]  } \stemNeutral c8 e g,16 g g r 
    \bar "||"    \repeat volta 2 { %startrep 
     | % 8
    \grace{\stemUp g16  [ a b  ]  } \stemNeutral c8 e c16 e c e c8 e g g      | % 9
    r2 r8 e c' a } % end of repeatactive
         | % 10
    g2 r8 e c' a      | % 11
    b2 r8 g d' b      | % 12
    g4 f g8 c g e      | % 13
    d16 d d d d8 d e4 e8 g      | % 14
    fs8. fs16 fs8 a e8. e16 e8 e      | % 15
    e16 d d d d8 d e4 e8 g      | % 16
    fs16 g fs e d8 a' g4 r      | % 17
    c8 af c,4 b8 g' g4      | % 18
    c,8 af' d4 g,8 r r4      | % 19
    %barkeysig: 
    \key ef \major 
    c,8 ef g, ef' c ef g, \mark\default g'     \repeat volta 2 { %startrep 
     | % 20
    \grace{\stemUp bf8  } \stemNeutral af( g) fs g \grace{\stemUp bf  } \stemNeutral af( g) r g } % end of repeatactive
         | % 21
    \grace{\stemUp bf8  } \stemNeutral af( g) c g g( f) r f      | % 22
    \grace{\stemUp af  } \stemNeutral g( f) d f \grace{\stemUp g  } \stemNeutral f( ef) r ef      | % 23
    ef( d) b d d16 cs c r r8 g'      | % 24
    ef4. r8 ef4. r8      | % 25
    ef4 ef g16 fs f r r4      | % 26
    d4. r8 ef4. r8      | % 27
    r2 g,8 c'16 b bf8 a      | % 28
    af4.-^  g8( c,4) r      | % 29
    af'~ af8 g c4 r8 g      | % 30
    \tempo "Slow" 4 = 60  \tempo "Slow" 4 = 60  \grace{\stemUp bf  } \stemNeutral af( g) fs g \grace{\stemUp bf  } \stemNeutral af( g) r g      | % 31
    \grace{\stemUp bf  } \stemNeutral af( g) c g g( f) r f      | % 32
    \mark\default \grace{\stemUp af  } \stemNeutral g( f) d f \grace{\stemUp g  } \stemNeutral f( ef) r ef      | % 33
    \tempo "Allegro" 4 = 120  ef d b d d16 cs c r r8 g'      | % 34
    d4. r8 ef4. r8      | % 35
    ef4 ef g16 fs es r r4      | % 36
    \mark\default d4. r8 ef4. r8      | % 37
    r2 g,8 c'16 b as8 a      | % 38
    gs4.-^  g8( c,4) r      | % 39
    af'4.-^  g8( c4) r8 g      | % 40
    c, e g,16 g g8 c e g,16 g g8      | % 41
    c e g16 a g f e8 g c r \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c''{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    \key ef \major 
    \time 2/4 
    \partial 8*1
    r8 \mf      | % 1
    r g r g r g r g      | % 2
    r g r g b,16 b b r r4      | % 3
    r8 g' r g r g r c,      | % 4
    r d r f ef r r4      | % 5
    f4.-^  f8( g,) r r4      | % 6
    f'4.-^  f8( ef) r g-^  r      | % 7
    %barkeysig: 
    \key c \major 
    g,8 g g r g g g r 
    \bar "||"    \repeat volta 2 { %startrep 
     | % 8
    g8 g g g g g g r      | % 9
    e e g g e e g g } % end of repeatactive
         | % 10
    e8 e g g e e g g      | % 11
    f4 g8 g f4 g8 g      | % 12
    b b g g c g c r      | % 13
    r c r c r b b b      | % 14
    r d r c r b r b      | % 15
    r c r c r b b b      | % 16
    r d r d r d d g      | % 17
    af16 af af af f8 d g4 r8 g      | % 18
    f16 f f f af8 c b r d r      | % 19
    %barkeysig: 
    \key ef \major 
    c,8 ef g, ef' c ef g, \mark\default ef'     \repeat volta 2 { %startrep 
     | % 20
    c8 ef g, ef' c ef g, ef' } % end of repeatactive
         | % 21
    c8 ef g, ef' g16 fs f r r4      | % 22
    d8 f g, f' c ef ef, g      | % 23
    f c' g b ef r4 g8      | % 24
    \grace{\stemUp bf  } \stemNeutral af( g) fs g \grace{\stemUp bf  } \stemNeutral af( g) r g      | % 25
    \grace{\stemUp bf  } \stemNeutral af( g) c g g( f) r f      | % 26
    \grace{\stemUp af  } \stemNeutral g( f) d f \grace{\stemUp g  } \stemNeutral f( ef) r ef      | % 27
    ef d b d c r r4      | % 28
    f4.-^  f8( g,) c'16 b bf8 a      | % 29
    f4~ f8 f ef g16 af g8 r      | % 30
    c, ef g, ef' c ef g, ef'      | % 31
    c ef g, ef' g16 fs es r r4      | % 32
    \mark\default d8 f g, f' c ef ef, g      | % 33
    f c' g b ef r4 g8      | % 34
    \grace{\stemUp bf  } \stemNeutral af( g) fs g \grace{\stemUp bf  } \stemNeutral af( g) r g      | % 35
    \grace{\stemUp bf  } \stemNeutral af( g) c g g( f) r f      | % 36
    \mark\default \grace{\stemUp af  } \stemNeutral g( f) d f \grace{\stemUp g  } \stemNeutral f( ef) r ef      | % 37
    ef( d) b d c r r4      | % 38
    f4.-^  f8( g,) c'16 b as8 a      | % 39
    f4.-^  f8( ef) g16 af g8 r      | % 40
    g, g g r g g g r      | % 41
    g g g r e' d e r \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #""
    \clef alto
    \key ef \major 
    \time 2/4 
    \partial 8*1
    r8 \mf      | % 1
    c ef g, ef' c ef g, ef'      | % 2
    c ef g, ef' d g g, g'      | % 3
    d g g, g' c, ef ef, g      | % 4
    f c' g b c r r4      | % 5
    bf4.-^  bf8( ef,) r r4      | % 6
    bf'4.-^  bf8( c) r ef-^  r      | % 7
    %barkeysig: 
    \key c \major 
    e,8 e e r e e e r 
    \bar "||"    \repeat volta 2 { %startrep 
     | % 8
    e8 e e r e e g r      | % 9
    c16 \f d e f fs8 g e4 c8 g' } % end of repeatactive
         | % 10
    c,16 d e f fs8 g e4. c'8      | % 11
    g16 a b c cs8 d b4 g8 g      | % 12
    d'16 b g f e8 d c4 c8 r      | % 13
    fs,16 fs fs fs fs8 fs r g g g      | % 14
    r fs r c' r g r g      | % 15
    fs16 fs fs fs fs8 fs r g g g      | % 16
    c4~ c8~ c16 r r8 b b r      | % 17
    d, f af c b d g4      | % 18
    f8 d c af g r g r      | % 19
    %barkeysig: 
    \key ef \major 
    c4. r8 c4. \mark\default r8     \repeat volta 2 { %startrep 
     | % 20
    c4. r8 c4. r8 } % end of repeatactive
         | % 21
    c4. r8 b16 b b r r4      | % 22
    b4. r8 c4. r8      | % 23
    af4 g g8 af' g ef      | % 24
    c4. r8 c4. r8      | % 25
    c4 c d16 d d r r4      | % 26
    b4. r8 c4. r8      | % 27
    af4 g ef8 c'16 b bf8 a      | % 28
    bf4.-^  bf8( ef,) r r4      | % 29
    d~ d8 d g r r4      | % 30
    c4. r8 c4. r8      | % 31
    c4. r8 b16 b b r r4      | % 32
    \mark\default b4. r8 c4. r8      | % 33
    af4 g g8 af' g ef      | % 34
    c4. r8 c4. r8      | % 35
    c4 c d16 d d r r4      | % 36
    \mark\default b4. r8 c4. r8      | % 37
    af4 g ef8 c'16 b as8 a      | % 38
    bf4.-^  bf8( ef,) r r4      | % 39
    d4.-^  d8( g) r r4      | % 40
    e8 e e r e e e r      | % 41
    e e e r g g g r \bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Cello"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key ef \major 
    %barkeysig: 
    \key ef \major 
    %bartimesig: 
    \time 2/4 
    \partial 8*1
    r8 \mf      | % 1
    c4 g c g      | % 2
    c f, c' f,      | % 3
    bf f c' ef      | % 4
    f g c8 c16 b bf8 a      | % 5
    d,4 g, c'8 c16 b bf8 a      | % 6
    d,4 g, c8 r c-^  r      | % 7
    %barkeysig: 
    \key c \major 
    c8 c g r c c g r 
    \bar "||"    \repeat volta 2 { %startrep 
     | % 8
    c8 c g g c c g r      | % 9
    c4 g c g } % end of repeatactive
         | % 10
    c4 g c g      | % 11
    b g d' g,      | % 12
    b g c8 g' c, r      | % 13
    \grace{\stemUp e16  [ f g  ]  } \stemNeutral a8 r d, r \grace{\stemUp d16  [ e f  ]  } \stemNeutral g8 r d r      | % 14
    \grace{\stemUp e16  [ f g  ]  } \stemNeutral a8 r d, r \grace{\stemUp d16  [ e f  ]  } \stemNeutral g8 r d r      | % 15
    \grace{\stemUp e16  [ f g  ]  } \stemNeutral a8 r d, r \grace{\stemUp d16  [ e f  ]  } \stemNeutral g8 r d r      | % 16
    a' d d, r r g, g r      | % 17
    d'2 g4 r      | % 18
    r2 g8 r g, r      | % 19
    %barkeysig: 
    \key ef \major 
    c'8 ef g, ef' c ef g, \mark\default ef'     \repeat volta 2 { %startrep 
     | % 20
    c,4 g c g } % end of repeatactive
         | % 21
    c4 g d' g,      | % 22
    d' g, c ef      | % 23
    f g c8 af g ef      | % 24
    c4 g c g      | % 25
    c g d' g,      | % 26
    d' g, c ef      | % 27
    f g c,8 r r4      | % 28
    d8 g g, d' c' c16 b bf8 a      | % 29
    d, g g, g' c g16 af g8 r      | % 30
    c,4 g c g      | % 31
    c g d' g,      | % 32
    \mark\default d' g, c ef      | % 33
    f g c8 af g ef      | % 34
    c4 g c g      | % 35
    c g d' g,      | % 36
    \mark\default d' g, c ef      | % 37
    f g c,8 r r4      | % 38
    d8 g g, d' c' c16 b as8 a      | % 39
    d, g g, g' c g16 af g8 r      | % 40
    c, c g r c c g r      | % 41
    c c g r g' r c, r \bar "|." 
}% end of last bar in partorvoice

      ApartCverseA = \lyricmode { \set stanza = " 1. " Solo }

\score {
    << 
        \context Staff = ApartA << 
            \context Voice = AvoiceAA \AvoiceAA
        >>


        \context Staff = ApartB << 
            \context Voice = AvoiceBA \AvoiceBA
        >>


        \context Staff = ApartC << 
            \context Voice = AvoiceCA \AvoiceCA
        >>

         \context Lyrics = ApartCverseA\lyricsto AvoiceCA  \ApartCverseA

        \context Staff = ApartD << 
            \context Voice = AvoiceDA \AvoiceDA
        >>




      \set Score.skipBars = ##t
      %%\set Score.melismaBusyProperties = #'()
      \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      %% remove previous line to get barnumbers only at beginning of system.
       \accidentalStyle modern-cautionary
      \set Score.rehearsalMarkFormatter = #format-mark-box-letters %%boxed rehearsal-marks
       \override Score.TimeSignature.style = #'numbered %%makes timesigs always numerical
      %% remove previous line to get cut-time/alla breve or common time 
      \set Score.pedalSustainStyle = #'mixed 
       %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
       \override Score.TrillSpanner.bound-details.right.padding = #-2
      \override Score.TextSpanner.bound-details.right.padding = #-1
      %% Lilypond's normal textspanners are too weak:  
      \override Score.TextSpanner.dash-period = #1
      \override Score.TextSpanner.dash-fraction = #0.5
      %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      \override Score.ChordName.font-family = #'roman 
      \override Score.ChordName.font-size =#0 
      %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
  \midi {\tempo 4 = 120}
}%% end of score-block 

#(set-global-staff-size 14)
