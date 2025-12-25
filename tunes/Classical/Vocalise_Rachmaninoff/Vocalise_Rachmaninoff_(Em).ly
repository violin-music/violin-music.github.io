\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Vocalise"
  composer = "Sergei Rachmaninov"
  subtitle = "Violin"
  %opus = " Opus 34 Nr. 14"
}

AvoiceAA = \relative c' {
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \key e \minor
  \time 4/4
  r4 r8 \p ^\markup {\upright  "Lentamento molto cantabile"} \<
  g''16-4\downbow(  fs
  g4.) e16(  fs
  \time 2/4
  g8 \! fs16 e) fs8( d16 \> e)      | % 2
  \time 4/4
  fs2( \! \< fs8) \> e16( \< d e8 c16 \> d)      | % 3
  e2( \! \! \! \! e8) d16( \< c b8. a16)      | % 4
  b8.( \! \mf c16 \> b4)( b16)( c \< e g) a8.( b16)      | % 5
  g4.( \! \! \> f8) e4 ds8.\trill ( \> cs32 ds)      | % 6
  e2 \! \! r8 e4( \mf ^\markup {\upright  "poco piu animato"} d8) \<      | % 7
  cs2( \! cs8) cs( \< d e)      | % 8
  e( \! \> d16 e) fs4( fs8) b,16( \< cs d8 e16 fs)      | % 9
  gs2( \! \! gs8) es( \< fs gs)      | % 10
  gs--  \! \f fs16--  gs--  a4( a8) gs( \> fs e)      | % 11
  fs4. \! \mf e16 \> ds e4. b16( \p cs      | % 12
  ds8 \! \< e16 fs) g4( \f g8) fs( e \> d)      | % 13
  d( \! \! \mf cs16 d) e4( e8) d16( cs d8 a16 b)      | % 14
  cs8( \< d16 e) f4( f8) e( d c      | % 15
  b2 \! as4.) e'8--       | % 16
  \time 2/4
  fs8. ^\markup {\upright  "ritenuto"} e16 d e cs8      | % 17
  \time 4/4
  b2 r8 fs'4( \mf ^\markup {\upright  "poco piu mosso "} e8)      | % 18
  ds4--  \> fs( fs8) fs4( \< e8)      | % 19
  ds4--  \! \! \> fs( \< fs8) g( \f fs e)      | % 20
  d( \! \! e fs \> d) b4(\( \p ^\markup {\upright  "poco ritenuto"} b16\) cs ds a')      | % 21
  g2 \! r8 g4( \< \mf ^\markup {\upright  ""} ^\markup {\upright  "a tempo"} fs8)      | % 22
  e4-- ( \! \> g\( g8\)) g( \< fs e16 d)      | % 23
  e4--  \! \! g( g8) a( \f g fs)      | % 24
  e( fs g e) c4(\( c16\) d e g      | % 25
  a2 \> b,4.) a'8      | % 26
  b2. \! \< a4      | % 27
  gs8 \! \f fs16 gs a4( \> a8) g fs e \>      | % 28
  ds \! \! d16 ds e4( e8) d4( c8)      | % 29
  %bartimesig:
  \time 2/4
  b8.( \mp a16) g( a fs8)      | % 30
  \time 4/4
  e2 \p r4 g8( a)      | % 31
  \time 2/4
  b8( a16 b c8 b16 c)      | % 32
  \time 4/4
  d4. c16( d e4) \< fs      | % 33
  g4.( \! a8) b2(      | % 34
  b8) c--  ^\markup {\upright  "ritenuto"} d--  e--  c( b) a( \> g16 a)      | % 35
  b4.( \! ^\markup {\upright  "a tempo"} a8) g4 fs8.\trill ( e32 fs)      | % 36
  e1      | % 37
  \time 2/4
  e2~ \bar "|."     | % 38
  \time 4/4
  e1\fermata  \bar "|."
}% end of last bar in partorvoice


\score {
  <<
    \context Staff = ApartA <<
      \context Voice = AvoiceAA \AvoiceAA
    >>
    \set Score.skipBars = ##t
    %%\set Score.melismaBusyProperties = #'()
    %      \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
    %% remove previous line to get barnumbers only at beginning of system.
    \accidentalStyle modern-cautionary
    \set Score.rehearsalMarkFormatter = #format-mark-box-letters %%boxed rehearsal-marks
    \override Score.TimeSignature.style = #'() %%makes timesigs always numerical
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
}%% end of score-block