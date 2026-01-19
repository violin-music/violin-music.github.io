\version "2.19.49"
%=============================================
%   created by MuseScore Version: 1.3
%          February 3, 2015
%=============================================
\language "english"

\include "includes.ly"
\include "markups.ly"

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  %%indent = 0 \mm
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  %% in orchestral scores you probably want the two bold slashes
  %% separating the systems: so uncomment the following line:
  %% system-separator-markup = \slashSeparator
  }

\header {
title = "La Vie en Rose"
}

melody = \relative c'{
    \clef treble
    \key c \major
    r4 r r8 e e d      | % 1
    c b c d e f f e      | % 2
    d cs d e f g g f      | % 3
    e d e f g g g g      | % 4
    g g ds e g2      | % 5
    \break
    c4. b8 a g e c'      | % 6
    b4. a8 g e c b'      | % 7
    a4. g8 e b c b'      | % 8
    a2 g      | % 9
    d'4. c8 b a f c'      | % 10
    b4. a8 g f d b'      | % 11
    a4. g8 f df d b'      | % 12
    a2 g      | % 13
    c4. b8 a g e c'      | % 14
    b4. a8 g e c b'      | % 15
    a4. g8 e b c c'      | % 16
    c1      | % 17
    d8 d4 c8 d d4 c8      | % 18
    d d4 c8 g2            | % 19
    d'8 d4 c8 d d4 c8      | % 20
    d d4 c8 e4 d      | % 21
    c4. b8 a g e c'      | % 22
    b4. a8 g e c b'
    a4. g8 a4 b \bar "|."
    c1 \bar "|."
}% end of last bar in partorvoice



APnovoiceBA = \relative c'{
    \set Staff.instrumentName = #"Piano"
    \set Staff.shortInstrumentName = #"Pno."
    \clef treble
    %staffkeysig
    \key c \major
    r4 r r8 e e d      | % 1
    c b c d e f f e      | % 2
    d cs d e f g g f      | % 3
    r1      | % 4
    r      | % 5
    r      | % 6
    r      | % 7
    r      | % 8
    r      | % 9
    r      | % 10
    r      | % 11
    r      | % 12
    r      | % 13
    r      | % 14
    r      | % 15
    r      | % 16
    r      | % 17
    r      | % 18
    r      | % 19
    r      | % 20
    r      | % 21
    r      | % 22
    r      | % 23
    r \bar "|."     | % 24
    r1 \bar "|."
}% end of last bar in partorvoice


APnovoiceBB = \relative c'{
        r4 r r <f, af b>      | % 1
    e2~ e8 r <g bf cs>4      | % 2
    r1      | % 3
    s1      | % 4
    s1      | % 5
    s1      | % 6
    s1      | % 7
    s1      | % 8
    s1      | % 9
    s1      | % 10
    s1      | % 11
    s1      | % 12
    s1      | % 13
    s1      | % 14
    s1      | % 15
    s1      | % 16
    s1      | % 17
    s1      | % 18
    s1      | % 19
    s1      | % 20
    s1      | % 21
    s1      | % 22
    s1      | % 23
    s1 \bar "|."     | % 24
    s1 \bar "|."
}% end of last bar in partorvoice


APnopartB =  <<
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
        \context Voice = APnovoiceBA\APnovoiceBA\\
        \context Voice = APnovoiceBB\APnovoiceBB
        >>



AvoiceCA = \relative c{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key c \major
    r4 r r <g, g'>      | % 1
    <c g'>2~ <c g'>8 r <a a'>4      | % 2
    <d a'>2~ <d a'>8 r g,4      | % 3
    r1      | % 4
    r      | % 5
    <c c'>2 <g' g'>      | % 6
    <c, c'> <g' g'>      | % 7
    c e4 c      | % 8
    <d, d'>2 <f f'>      | % 9
    <d d'> <f f'>      | % 10
    d' f4 f      | % 11
    d2 f4 f      | % 12
    r1      | % 13
    <c, c'>2 <g' g'>      | % 14
    <c, c'> <g' g'>      | % 15
    r1      | % 16
    r      | % 17
    <c, c'>2 <g' g'>      | % 18
    <c, c'> <g' g'>      | % 19
    r1      | % 20
    r      | % 21
    <c, c'>2 <g' g'>      | % 22
    <c, c'> <g' g'>      | % 23
    r1 \bar "|."     | % 24
    r1 \bar "|."
}% end of last bar in partorvoice


AvoiceCB = \relative c{
        s1      | % 1
    s1      | % 2
    s1      | % 3
    s1      | % 4
    s1      | % 5
    s1      | % 6
    s1      | % 7
    c,2 g'      | % 8
    s1      | % 9
    s1      | % 10
    d2 g      | % 11
    d g      | % 12
    <e g'>4 <ef fs'> <d f'> <g f'>      | % 13
    s1      | % 14
    s1      | % 15
    c2 g'4 e8 bf'      | % 16
    a2 s2      | % 17
    s1      | % 18
    s1      | % 19
    s1      | % 20
    s1      | % 21
    s1      | % 22
    s1      | % 23
    s1 \bar "|."     | % 24
    s1 \bar "|."
}% end of last bar in partorvoice


ApartC =  <<
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
        \context Voice = AvoiceCA\AvoiceCA\\
        \context Voice = AvoiceCB\AvoiceCB
        >>

chordNames = \chordmode {
            s4         c2 c2:6 c2 c1.:6 d2:m7 
            g2:maj7 d2:m7 g2*5 :maj7 c4 fs4:m6 
            d2:m7 c2 c2:6 c2 c2*5 :6 c1 c4
}%%end of chordlist


\include "score.ly"