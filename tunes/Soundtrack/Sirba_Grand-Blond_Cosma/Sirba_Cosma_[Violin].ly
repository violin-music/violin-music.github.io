\version "2.24.4"
\language "english"

\header {
  title = "Sirba"
  subtitle = "from The Tall Blond Man with One Black Shoe (1972)"
  composer = "Vladimir Cosma"
  country = "France"
  genre = "Soundtrack"
}

\include "../../common/common-header.ily"

Piccolo =  \relative a' {
  
  \key a \minor
  \time 2/2
  \repeat volta 2 {
    a'4 \mf -. a4 -. a4 -. a4 -. | % 12
    a8 -. gs8 -. a8 -. b8 -. c2  | % 13
    b8 -. d8 -. c4. -- b8 -. a8 -. gs8 -. | % 14
    a8 -. e'8 -. c8 -. e8 -. a,8 -. e8 -. fs8 -. gs8 -. | % 15
    \break
    a4 -. a4 -. a4 -. a4 -.  | % 16
    a8 -. gs8 -. a8 -. b8 -. c2 | % 17
    b8 -. d8 -. c4. -- b8 -. a8 -. gs8 -. | % 18
    a8 -. e'8 -. c8 -. e8 -. a,2
    \break | % 19
    \acciaccatura { cs4 ( } d4 ) -. d4 -. d4 -. d4 -. |
    d8 -. cs8 -. d8 -. e8 -. f2 | % 21
    \acciaccatura { b,4 ( } c4 ) -. c4 -. c4 -. c4 -. | % 22
    c8 -. b8 -. c8 -. d8 -. e2  | % 23
    \break
    \acciaccatura { a,4 ( } bf4 ) -. bf4 -. bf4 -. bf4 -. | % 24
    bf8 -. a -. bf -. c -. d -. c -. bf -. d8 -. | % 25
    a8 -. e8 -. fs8 -. gs8 -. a8-1 -. e'8 -. c8 -. e8 -. | % 26
    a,2 r8 e8 fs8 gs8
  }
  \break | % 27
  a2 r8 e'8 -. c8 -. e8 -. | % 28
  a,2 r8 e'8 -. fs8 -. gs8 -. | % 29
  R1 |
  a,,2 r8 e'8 fs8 gs8 | % 31
  <e' a>2 r8 r8 r4  | % 32
  <e a>2 r2 \bar "|."
}

PartPThreeVoiceOne =  \relative a' {
  \clef "treble" 
  \key c \major 
  \time 2/4 a16 -. r16 b16 -. r16 c16 -.
  r16 ds16 -. r16 | % 2
  e16 -. r16 gs,16 -. r16 a16 -. r16 b16 -. r16 | % 3
  c16 -. r16 e16 -. r16 a16 -. r16 gs16 -. r16 
  \break | % 4
  R2 | % 5
  e,8 -. gs8 -. a8 -. b,8 -. | % 6
  c8 -. e8 -. a8 -. gs8 -. 
  \break | % 7
  a8 -. ds,8 -. e8 -. b8 -. | % 8
  c8 -. gs'8 -. a,8 -. b8 -. | % 9
  a'16 -. e'16 -. c16 -. e16 -. a,16 -. e'16 -. c16 -. e16 -.
  \pageBreak | \barNumberCheck #10
  r16 e16 -. fs16 -. gs16 -. a,16 -. e'16 -. c16 -. e16 -. \repeat
  volta 2 {
    | % 11
    a8 \mf -. a8 -. a8 -. a8 -. | % 12
    a16 -. gs16 -. a16 -. b16 -. c4 
    \break | % 13
    b16 -. d16 -. c8. -- b16 -. a16 -. gs16 -. | % 14
    a16 -. e'16 -. c16 -. e16 -. a,16 -. e16 -. fs16 -. gs16 -. | % 15
    a8 -. a8 -. a8 -. a8 -. 
    \break | % 16
    a16 -. gs16 -. a16 -. b16 -. c4 | % 17
    b16 -. d16 -. c8. -- b16 -. a16 -. gs16 -. | % 18
    a16 -. e'16 -. c16 -. e16 -. a,4 \break | % 19
    \acciaccatura { cs8 ( } d8 ) -. d8 -. d8 -. d8 -. |
    \barNumberCheck #20
    d16 -. cs16 -. d16 -. e16 -. f4 | % 21
    \acciaccatura { b,8 ( } c8 ) -. c8 -. c8 -. c8 -. | % 22
    c16 -. b16 -. c16 -. d16 -. e4 \pageBreak | % 23
    \acciaccatura { a,8 ( } as8 ) -. as8 -. as8 -. as8 -. | % 24
    as16 -. a16 -. as16 -. c16 -. d16 -. c16 -. as16 -. d16 -. | % 25
    a16 -. e16 -. fs16 -. gs16 -. a16 -. e'16 -. c16 -. e16 -. | % 26
    a,4 r16 e16 fs16 gs16
  }
  \break | % 27
  a,4 r16 e'16 -. c16 -. e16 -. | % 28
  a,4 r16 e'16 -. fs16 -. gs16 -. | % 29
  R2 | \barNumberCheck #30
  a,4 r16 e'16 fs16 gs16 | % 31
  R2 \break | % 32
  c,4 r4 \bar "|."
}

PartPFourVoiceOne =  \relative a' {
  \clef "treble" \key c \major \time 2/4 R2*3 \break | % 4
  a8 -. b8 -. c8 -. ds8 -. | % 5
  e8 -. gs,8 -. a8 -. b8 -. | % 6
  c8 -. e8 -. a8 -. gs8 -. \break | % 7
  a8 -. ds,8 -. e8 -. b8 -. | % 8
  c8 -. gs8 -. a8 -. b8 -. | % 9
  a16 -. e'16 -. c16 -. e16 -. a,16 -. e'16 -. c16 -. e16 -.
  \pageBreak | \barNumberCheck #10
  a,16 -. e'16 -. c16 -. e16 -. a,16 -. e'16 -. c16 -. e16 -. \repeat
  volta 2 {
    | % 11
    \acciaccatura { gs,8 } a16 -. r16 \acciaccatura { gs8 } a16 -.
    r16 \acciaccatura { gs8 } a16 -. r16 \acciaccatura { gs8 } a16
    -. r16 | % 12
    \acciaccatura { gs8 } a16 -. e'16 -. c16 -. e16 -.
    \acciaccatura { gs,8 } a16 -. e'16 -. c16 -. e16 -. \break | % 13
    b16 -. d16 -. gs,16 -. b16 -. c16 -. d16 -. e16 -. gs16 -. | % 14
    a16 -. e16 -. fs16 -. gs16 -. a,16 -. e'16 -. c16 -. e16 -. | % 15
    \acciaccatura { gs,8 } a16 -. r16 \acciaccatura { gs8 } a16 -.
    r16 \acciaccatura { gs8 } a16 -. r16 \acciaccatura { gs8 } a16
    -. r16 \break | % 16
    \acciaccatura { gs8 } a16 -. e'16 -. \acciaccatura { gs,8 } a16
    -. e'16 -. \acciaccatura { gs,8 } a16 -. e'16 -. \acciaccatura
    { gs,8 } a16 -. e'16 -. | % 17
    b16 -. d16 -. gs,16 -. b16 -. c16 -. d16 -. a'16 -. gs16 -. | % 18
    a,16 -. e'16 -. c16 -. e16 -. a,16 -. e'16 -. c16 -. cs16 -.
    \break | % 19
    \acciaccatura { cs8 ( } d8 ) -. d8 -. d8 -. d8 -. |
    \barNumberCheck #20
    d16 -. cs16 -. d16 -. e16 -. f4 | % 21
    \acciaccatura { b,8 ( } c8 ) -. c8 -. c8 -. c8 -. | % 22
    c16 -. b16 -. c16 -. d16 -. e4 \pageBreak | % 23
    \acciaccatura { a,8 ( } as8 ) -. as8 -. as8 -. as8 -. | % 24
    as16 -. a16 -. as16 -. c16 -. d16 -. c16 -. as16 -. d16 -. | % 25
    a16 -. e16 -. fs16 -. gs16 -. a16 -. e'16 -. c16 -. e16 -. | % 26
    a,4 r16 e16 fs16 gs16
  }
  \break | % 27
  a4 r16 e'16 -. c16 -. e16 -. | % 28
  a,4 r16 e'16 -. fs16 -. gs16 -. | % 29
  \ottava #1 | % 29
  a4 r16 e'16 c16 e16 | \barNumberCheck #30
  a,,4 r16 e'16 fs16 gs16 \ottava #0 | % 31
  a,4 r16 r16 r8 \break | % 32
  <c, e a>4 ^\fermata r4 \bar "|."
}

PartPFiveVoiceOne =  \relative a {
  \clef "treble_8" \key c \major \time 2/4 a16 -. a,16 -. b16 -. b'16
  -. c,16 c'16 -. ds,16 -. ds'16 -. | % 2
  e,16 -. e'16 -. gs16 gs,16 -. a'16 -. a,16 -. b'16 -. b,16 -. | % 3
  c,16 -. c'16 -. e,16 -. e'16 -. a,16 -. a'16 -. gs,16 -. gs'16 -.
  \break | % 4
  R2 | % 5
  a,16 -. r16 b16 -. r16 c16 -. r16 ds16 -. r16 | % 6
  e16 -. r16 gs16 -. r16 a16 -. r16 b16 -. r16 \break | % 7
  c,16 -. r16 e16 -. r16 a16 -. r16 gs16 -. r16 | % 8
  a16 -. r16 ds,16 -. r16 e16 -. r16 b16 -. r16 | % 9
  r8 <c, e a>8 -. r8 <c e a>8 -. \pageBreak | \barNumberCheck #10
  r8 <a c e>8 -. r8 <c e a>8 -. \repeat volta 2 {
    | % 11
    r8 \mf <c e a>8 -. r8 <c e a>8 -. | % 12
    r8 <c e a>8 -. r8 <c e a>8 -. \break | % 13
    r8 <b d gs>8 -. r8 <b d gs>8 -. | % 14
    r8 <c e a>8 -. r8 <c e a>8 -. | % 15
    r8 <c e a>8 -. r8 <c e a>8 -. \break | % 16
    r8 <c e a>8 -. r8 <c ef a>8 -. | % 17
    r8 <e gs b>8 -. r8 <e gs b>8 -. | % 18
    r8 <c e a>8 -. r8 <c e a>8 -. \break | % 19
    r8 <d f a>8 -. r8 <d f a>8 -. | \barNumberCheck #20
    r8 <d f a>8 -. r8 <d f a>8 -. | % 21
    r8 <e g c>8 -. r8 <e g c>8 -. | % 22
    r8 <e g c>8 -. r8 <e g c>8 -. \pageBreak | % 23
    r8 <d f as>8 -. r8 <d f as>8 -. | % 24
    r8 <d f as>8 -. r8 <d f as>8 -. | % 25
    r8 <e a c>8 -. r8 <e a c>8 -. | % 26
    r8 <c e a>8 -. r8 <c e a>8 -.
  }
  \break | % 27
  R2*5 \break | % 32
  R2 \bar "|."
}

PartPSixVoiceOne =  \relative a, {
  \clef "bass" \key c \major \time 2/4 a16 -. -> r16 b16 -. -> r16 c16
  -. -> r16 ds16 -. -> r16 | % 2
  e16 r16 gs,16 r16 a16 r16 b16 r16 | % 3
  c16 r16 e16 r16 a16 r16 gs16 r16 \break | % 4
  a16 r16 ds,16 r16 e16 r16 b16 r16 | % 5
  c16 r16 gs16 r16 a16 r16 b16 r16 | % 6
  c16 r16 ds16 r16 e16 r16 b16 r16 \break | % 7
  c16 r16 e16 r16 a16 r16 gs16 r16 | % 8
  a16 r16 ds,16 r16 e16 r16 b16 r16 | % 9
  a8 -. r8 e8 -. r8 \> \pageBreak | \barNumberCheck #10
  a8 \! -. r8 e16 -. e'16 -. fs16 -. gs16 -. \repeat volta 2 {
    | % 11
    a,8 -. r8 e8 -. r8 | % 12
    a8 -. r8 e8 -. r8 \break | % 13
    b'8 -. r8 e,8 -. r8 | % 14
    a8 -. r8 a16 -. e16 -. fs16 -. gs16 -. | % 15
    a8 -. <e' a>8 -. e,8 -. <e' a>8 -. \break | % 16
    fs8 <e a>8 f8 <ef c'>8 | % 17
    e8 <d' e>8 gs,8 <d' e>8 | % 18
    a8 -. r8 c8 -. cs8 -. \break | % 19
    d,8 -. r8 a'8 -. r8 | \barNumberCheck #20
    d,8 -. r8 a'8 -. r8 | % 21
    c,8 -. r8 g'8 -. r8 | % 22
    c,8 -. r8 g'8 -. r8 \pageBreak | % 23
    as8 -. r8 f8 -. r8 | % 24
    as8 -. r8 f8 -. r8 | % 25
    a8 -. r8 e8 -. r8 | % 26
    a8 -. r8 a8 -. r8
  }
  \break | % 27
  a8 r8 a8 r8 | % 28
  a8 r8 a8 r8 | % 29
  a8 r8 a8 r8 | \barNumberCheck #30
  a8 r8 a16 e'16 fs16 gs16 | % 31
  a,4 r4 \break | % 32
  a8 ^\fermata r8 r4 \bar "|."
}

PartPSevenVoiceOne =  \relative a, {
  \clef "bass" \key c \major \time 2/4 | % 1
  R2 | % 2
  a16 \f r16 b16 r16 c16 r16 ds16 r16 | % 3
  e16 r16 gs,16 r16 a16 r16 b16 r16 \break | % 4
  c16 r16 e16 r16 a16 r16 gs16 r16 | % 5
  a16 r16 ds,16 r16 e16 r16 b16 r16 | % 6
  bs16 r16 gs16 r16 a16 r16 b16 r16 \break | % 7
  c16 r16 ds16 r16 e16 r16 b16 r16 | % 8
  c16 r16 e16 r16 a16 r16 gs16 r16 | % 9
  a,8 -. r8 e8 -. r8 \> \pageBreak | \barNumberCheck #10
  a8 \! -. r8 e8 -. r8 \> \repeat volta 2 {
    | % 11
    a8 \! -. r8 e8 -. r8 | % 12
    a8 -. r8 e8 -. r8 \break | % 13
    b'8 -. r8 e,8 -. r8 | % 14
    a8 -. r8 e8 -. r8 | % 15
    a8 -. r8 e8 -. r8 \break | % 16
    a8 -. r8 f8 -. r8 | % 17
    e8 -. r8 gs8 -. r8 | % 18
    a8 -. r8 c8 -. cs8 -. \break | % 19
    d,8 -. r8 a'8 -. r8 | \barNumberCheck #20
    d,8 -. r8 a'8 -. r8 | % 21
    c,8 -. r8 g'8 -. r8 | % 22
    c,8 -. r8 g'8 -. r8 \pageBreak | % 23
    as8 -. r8 f8 -. r8 | % 24
    as8 -. r8 f8 -. r8 | % 25
    a8 -. r8 e8 -. r8 | % 26
    a8 -. e'8 a,8 r8
  }
  \break | % 27
  a8 -. r8 a8 -. r8 | % 28
  a8 -. r8 a8 -. r8 | % 29
  a8 -. r8 a8 -. r8 | \barNumberCheck #30
  a8 -. r8 a8 -. r8 | % 31
  R2 \break | % 32
  a4 ^\fermata r4 \bar "|."
}

PartPEightVoiceOne =  \relative a, {
  \clef "bass_8" \key c \major \time 2/4 R2*2 | % 3
  a16 r16 b16 r16 c16 r16 ds16 r16 \break | % 4
  e16 r16 gs,16 r16 a16 r16 b16 r16 | % 5
  c16 r16 e16 r16 a16 r16 gs16 r16 | % 6
  a16 r16 ds,16 r16 e16 r16 b16 r16 \break | % 7
  bs16 r16 gs16 r16 a16 r16 b16 r16 | % 8
  c16 r16 ds16 r16 e16 r16 b16 r16 | % 9
  a8 -. r8 e8 -. r8  | \barNumberCheck #10
  a8 -. r8 e8 -. r8 \repeat volta 2 {
    | % 11
    a8 -. r8 e8 -. r8 | % 12
    a8 -. r8 e8 -. r8 \break | % 13
    b'8 -. r8 e,8 -. r8 | % 14
    a8 -. r8 e8 -. r8 | % 15
    a8 -. r8 e8 -. r8 \break | % 16
    a8 -. r8 f8 -. r8 | % 17
    e8 -. r8 gs8 -. r8 | % 18
    a8 -. r8 c,8 -. cs8 -. \break | % 19
    d8 -. r8 a'8 -. r8 | \barNumberCheck #20
    d,8 -. r8 a'8 -. d,8 | % 21
    c8 -. r8 g'8 -. r8 | % 22
    c,8 -. r8 g'8 -. e8  | % 23
    as8 -. r8 f8 -. r8 | % 24
    as8 -. r8 f8 -. r8 | % 25
    a8 -. r8 e8 -. r8 | % 26
    a8 -. e'8 a,8 r8
  }
  \break | % 27
  a4 r4 | % 28
  a4 r4 | % 29
  a4 r4 | \barNumberCheck #30
  a4 r16 e'16 fs16 gs16 | % 31
  a16 ^\fermata r16 r8 r4 \break | % 32
  R2 \bar "|."
}


% The score definition
\score {
  \new Staff <<
    %\set Staff.instrumentName = "Piccolo"
    %\set Staff.shortInstrumentName = "Picc."
    \context Staff <<
      \context Voice = "PartPTwoVoiceOne" { \Piccolo }
    >>
  >>
  \layout {}
  \midi {}
}