\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Rondo Alla Turca (KV 331, III)"
  composer = "Wolfgang Amadeus Mozart"
  style = "classical"
  country = "Austria"
}

targetKey = c


righta = \transpose c \targetKey'' {
  \partial 4 b,16-4\p( a, gs, a,-1 |
  c8)-.-3 r d16-3( c b, c |
  e8)-.-4 r f16-4( e ds e-1 |
  b-4 a gs a b a gs a |
  c'4)\accent a8-.-2 c'-.-4 |
  \grace { g!32[( a)] } b8-.-> <fs a>-.-2-4 <e g>-. <fs a>-. |
  \grace { g32[( a)] } b8-.-> <fs a>-.-2-4 <e g>-. <fs a>-. |
  \grace { g32[( a)] } b8-.-> <fs a>-.-4 <e g>-. <ds fs>-.-2-4 |
  e4--
}

rightaa = \transpose c \targetKey'' {
  \partial 4 b,16\p( a, gs, a, |
  c8)-. r d16( c b, c |
  e8)-. r f16( e ds e |
  b\deprecatedcresc a gs a b a gs a |
  c'4*1/2)\fz s8\p a8-.-2 b-. |
  c'-.\accent b-. a-.-1  gs-.-2 a-. e-. f-.-4 d-.-2 |
  c4-- b,8.-2\trill( a,32 b, |
  a,4)--
}

rightb = \transpose c \targetKey'' {
  <c e>8[\mp-.-1-3 <d! f!>-.] |
  <e g>-.-1-3 <e g>-. a16-4( g f e) |
  << { d4\accent-4 } \\ { b,8-2( g,) } >> <c e>8-. <d! f!>-. |
  <e g>-. <e g>-. a16-4( g f e) |
  <b, d>4\accent---2-4 <a, c>8-.-1-3 <b, d> |
  <c e>-.-1-3 <c e>-. f16-4( e d c) |
  << { b,4\accent-4 } \\ { gs,8-2( e,) } >> <a, c>8-. <b, d>-. |
  <c e>-. <c e>-. f16( e d c) |
  <gs, b,>4\accent---2-4
}

rightc = \relative c''' {
  <a a,>8-.\f <b b,>-. |
  <cs cs,>4\accent <a a,>8-. <b b,>-. <cs cs,>-.\accent <b b,>-. <a a,>-. <gs gs,>-. |
  <fs fs,>-. <gs gs,>-. <a a,>-. <b b,>-. <gs gs,>-4( <e e,>)-. <a a,>8-. <b b,>-. |
  <cs cs,>4\accent <a a,>8-. <b b,>-. <cs cs,>-.\accent <b b,>-. <a a,>-. <gs gs,>-. |
  <fs fs,>-. <b b,>-. <gs gs,>-. <e e,>-. |
  <a a,>4
}

rightco = \relative c'' {
  a16\f( a' b, b' |
  cs,\accent cs') r8 a,16( a' b, b' cs, cs' b, b' a, a' gs, gs') |
  fs,( fs' gs, gs' a, a' b, b' gs, gs' e, e') a,16( a' b, b' |
  cs,\accent cs') r8 a,16( a' b, b' cs, cs' b, b' a, a' gs, gs') |
  fs,( fs' b, b' gs, gs' e, e' |
}

rightcoa = \transpose c \targetKey' {
  <a a'>4
}

rightd = \relative c''' {
  cs16-3\p( d cs b a b a gs-3 fs a gs fs |
  es fs gs es cs-2 ds es cs |
  fs-4 \< es-1 fs gs a gs a-1 b \! |
  cs \> bs cs bs cs d cs b) \! |
  a( b a gs-3 fs a gs fs |
  e! fs gs e cs-2 ds e cs |
  ds-3 e fs ds bs-1 cs ds bs |
  cs4--)
}

righte = \relative c''' {
  e,16-5(\f d! cs b! |
  a b cs d-1 e fs gs a) |
  a\accent-4( gs fs e) e-5( d cs b |
  a-1 b cs d-1 e fs gs a) |
  as8\accent-3( b-.-4) e,16-5( d cs b |
  a b cs d-1 e fs gs a) |
  a\accent-4( gs fs e) e-4( d cs b |
  cs-3 e a,-1 cs-4 b d gs,-2 b-4 |
  a4)-- cs'16\p( d cs b a b a gs fs a gs fs |
  es fs gs es cs ds es cs) |
  fs( \< es fs gs a gs a b\! |
  cs-3 bs cs bs cs\deprecatedcresc bs cs as-2 |
  d)-4( \> cs d cs d cs d cs |
  d cs b a gs-2 a b gs\! |
  a\p b cs fs,-2 es fs gs es fs4)--
}

strum = \transpose c \targetKey { <<
  { cs'2\accent } \\
  { <cs e a>4\arpeggio }
>>
}

rightf = \transpose c \targetKey'' {
  << { cs'8. cs'16} \\ { cs4 } >> |
  << \strum \\ s4\f >> |
  \strum |
  d'16-4( cs') b-. cs'-. d'-4( cs') b-. cs' |
  <d' a fs>2\accent |
  \repeat unfold 4 { \grace d'8( <cs' a e>8)-. } |
  << { b4.-3( e'8)-. } \\ { <gs e>2 } >> |
  << \strum \\ s4\f >> |
  \strum |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  <d' a fs>2\accent |
  \grace d'8( <cs' a e>2)-. |
  \repeat unfold 4 { \grace cs'8( <b gs e>8)-. } |

  a4\p-- \grace { e32[( a)] } cs'8.-.-4 cs'16 |
  \repeat unfold 2 { \grace { e32[( a)] } cs'2\accent } |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  d'2\accent |
  \repeat unfold 4 { \grace { d'8( } cs'8)-. } |
  b4.-2( e'8)-. |
  << \strum \\ s4\f >> |
  \strum |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  <d' a fs>2\accent |
  \grace { d'8( } <cs' a e>2)-. |
  \repeat unfold 4 { \grace { cs'8( } <b gs e>8)-. } |
  <a, cs e a-->4. <cs cs'>8-. |
  <a, a-->4. <e e'>8-. |
  <a, a-->4. <cs cs'>8-. |
  <a, a>-.\f <cs cs'>8-. <a, a>-. <e e'>8-. |
  <a, a>4-. <a, cs e a >4-.(\ff |
  <a, cs e a >4)-. r4
}

lefta = {
  \partial 4 r4 |
  a8(-5 <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  e-.-> <b e'>-. <b e'>-. <b e'>-. |
  e-.-> <b e'>-. <b e'>-. <b e'>-. |
  e-.-> <b e'>-. b,-. b-. |
  e4--
}

leftaa = { \partial 4
  r4 |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  f8( <a ds'>)-. <a ds'>-. <a ds'>-. |
  e-. <a e'>-.  d!-. <f b>-. |
  c-. <e a>-. d-. <f b>-. |
  <e a>-.-4-1 <e a>-. <e gs>-.-4-2 <e gs>-. |
  <a, a>4--
}

leftb = { \partial 4
  \repeat unfold 2 { r4 | c8-. c'-. e-. e'-. | g4 }
  \repeat unfold 2 { r4 | a,8-. a-. c-. c'-. | e4 }
}

stra = {
  \grace { a,32[( cs  e)] }
  a8-.-> a-.
}

strd = {
  \grace { d,32[( fs,  a,)] }
  d8-.-> d-.
}

strdis = {
  \grace { ds,32[( fs,  a,)] }
  ds8-.-> ds-.
}

stre = {
  \grace { e,32[( gs,  b,)] }
 e8-.-> e-.
}

stral = { \stra a8-. a-. }
strdl = { \strd d8-. d-. }
strel = { \stre e8-. e-. }

leftc = {
  \partial 4
  r4 \stral \stral \strd \strdis \strel \stral \stral \strd \stre
}

leftd = \relative c {
  \partial 4 r4 |
  fs8-5( <a cs>)-. <a cs>-. <a cs>-. |
  gs8-4( <b cs>)-. <b cs>-. <b cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  es8( <gs cs>)-. <gs cs>-. <gs cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  gs8( <cs e!>)-. <cs e>-. <cs e>-. |
  gs8( <ds' fs>)-. <ds fs>-. <ds fs>-. |
  <cs e>4--
}

lefte = \relative c' {
  \partial 4 r4 |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  b-. <d e>-. gs,-. <d' e>-. |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  e,8( <gs d'>)-. <gs d'>-. <gs d'>-. |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  b-. <d e>-. gs,-. <d' e>-. |
  a-.-1 fs-.-2 d-. e-. a,-. a'-. r4 |

  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  gs8( <b cs>)-. <b cs>-. <b cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  cs,( <gs' cs>)-. <g cs>-. <fs cs'>-. |
  b,8( <fs' b>)-. <fs b>-. <fs b>-. |
  b,8( <gs'! b>)-. <gs b>-. <gs b>-. |
  cs,-. <fs a>-. cs-. <gs' b>-. <fs a>4--
}

leftf = { 
  a8-. a8-. \stral \stral \stral \strdl \stral \strel \stral \stral \stral \strdl \stral \strel
  a16( e' cs' e' a e' cs'  e')
  \repeat unfold 6 { a16 e' cs' e' }
  \repeat unfold 2 { a16 fs' d' fs' }
  \repeat unfold 2 { a16 e' cs' e' }
  \repeat unfold 2 { e16 e' gs e' }
  \stral \stral \stral \strdl \stral \strel \stral \stral \stral \stra \stra
  a,4-. <a, cs e a  >-.( < a, cs e a >)-. r4  
}


right = {
  \clef G
  \key a \minor
  \repeat volta 2 { \righta }
  \repeat volta 2 {\rightb \rightaa }
  \key a \major
  \repeat volta 2 { \rightc }
  \repeat volta 2 { \rightd }
  \repeat volta 2 { \righte }
  \repeat volta 2 { \rightc }
  \key a \minor
  \repeat volta 2 { \righta }
  \repeat volta 2 { \rightb \rightaa }
  \key a \major
  \repeat volta 2 { \rightco } \alternative { { \partial 4 \rightcoa } { \grace { s32*3 } \rightcoa } }
  \rightf
  \bar "|."
}

left = {
  \clef F
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \repeat volta 2 { \leftc a,4 }
  \repeat volta 2 { \leftd }
  \repeat volta 2 { \lefte }
  \repeat volta 2 { \leftc a,4 }
  \key a \minor
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \repeat volta 2 { \leftc } \alternative { { \partial 4 a,4 } { \stra } }
  \leftf
  \bar "|."
}
