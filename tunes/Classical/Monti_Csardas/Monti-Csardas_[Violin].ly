\version "2.24.4"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Csárdás"
  composer = "Vittorio Monti (1868-1922)"
  country = "Italy"
  style = "Classical"
}


% Tempo and section markers
introb = { \break \tempo "Allegro vivace" 4=140 \time 2/4 }
introc = { \tempo "Meno mosso" 4=80 \key d \major }
introd = { \bar "||" \tempo "Meno quasi lento" 4=60 }
introe = { \bar "||" \tempo "Allegro vivace" 4=140 \key f \major }
introf = { \bar "||" \tempo "Allegretto" 4=110 \key d \major }
introg = { \bar "||" \tempo "Più Presto" 4=150 }
introh = { \bar "||" \tempo "Molto più vivo" 4=170 }

% Expression markings
atem = \markup \italic "a tempo"
crml = \markup \italic "cresc. molto"
molto_rall = \markup \italic "molto rall."
pora = \markup \italic "poco rall."
rall = \markup \italic "rall."
simi = \markup \italic "simile"

violin = \relative c'' {
  
  
  \key d \minor 
  \tempo "Largo" 4=50 
  \time 2/4
\set Score.skipBars = ##t
   R2*4

% \new CueVoice {
%   d4->\f d->
%   b'2->
%   \tupletSpan 8
%   a8-> a,,(~\fermata a32 b a gs \tuplet 3/2 { a16[ cs e)] }
%   bf'4->\fermata cs,\p 
% }

  \time 4/4
  r2 r8 a,8\upbow (\p \acciaccatura c! bf a)
  a'2~ (a8 f) f\upbow g

  \appoggiatura { f16[ g] } f8( e) bf'2(~ bf8 bf,)
  
  \break

  bf8[(a]) cs( e-1) g-3 g f-2( cs!-1)
  e\upbow( d) \appoggiatura { d16[ e] } d-.( cs-. d-. e-.) f8-. a,\upbow[( \acciaccatura c! bf a)]
  a'2(~ a8 f) f g
  
   \break

  \appoggiatura { f16[ g] } f8( e) bf'2(~ bf8 bf,)
  bf[( a)] d( cs) g'4.^\molto_rall( e8)
  e\f( d) \appoggiatura { d16 [ e] } d8 ( cs d4) r
  
    \break

  \repeat volta 2 {
    \tupletSpan 4
    c-3\downbow(~^\atem \tuplet 3/2 8 { c16 e g bf c e } g16.) f32( e16.) d32-3\downbow c8( bf)
    bf( a_0) \appoggiatura { a16-2[ bf] } a8.( gs16 a2\upbow)

    a,4(~ \tuplet 3/2 8 { a16 cs e g\< a cs) } e8( cs a' cs,)\!
    e( d) \appoggiatura { d16[ e] } d( cs d e f4) f
    f(^\pora bf,~ bf8\fermata \tuplet 7/4 { e32 f e ds e f e } \tuplet 3/2 { g8 f e) }
    e( a,) a4~ a8 gs16( a) bf a c16.\fermata b32

    \grace { bf16[(^\atem c] } bf[ a \grace { a[ bf] } a g] \grace { g[ a] } g[ f \grace { f[ g] } f e]) a4.-2(^\molto_rall e8-3)
    e( d) \appoggiatura { d16[ e] } d8(\f cs d4) r
  }

  \introb
  \repeat volta 2 {
    d'8->\p d'-. r bf-.
    r a-. r f-.
    e( d4 cs8)
    d4~-> d8 r

    d16-. e-. f-. e-. d-. e-. f-. e-.
    d^\simi e f e d e f d
    f8-.\f e4-> ds8
    e4~-> e8 r
    g16-.\p a-. bf-. a-. g-. a-. b-. a-.
    g^\simi a b a g a bf g
    f g a g f g a g

    f g a g f g a f
    a,^\crml b cs d? e f g a
    b! a g f e d cs e
    e8-. d4-> cs8-.
    d4 r
  }
  \repeat volta 2 {
    \appoggiatura s8 r c,?[-. r c]-.
    r c[-. r c]-.
    r c[-. r c]-.

    r c[-. r c]-.
    r a[-. r a]-.
    r a[-. r a]-.
    r a[-. r a]-.
    r a[-. r d]-.
    r d[-. r d]-.
    r d[-. r d]-.
    r d[-. r d]-.
    r d[-. r d]-.
    r a[-. r cs]-.

    r cs[-. r e]-.
    r a[-. r a]-.
    a,4 r
  } \key d \major

  \introc
  d''\f a8. a16
  b8( a) g( fs)
  fs( e) \appoggiatura { e16[ fs] } e( ds e g)
  b2
  b8.(\pp cs,16) cs8( e')
  e8.( g,16) g8 g

  g( fs) \appoggiatura { fs16[ g] } fs( e d e)\<
  fs2
  d'4\!\f a8. a16
  b8( a) g( fs)
  fs( e) \appoggiatura { e16[ fs] } e( ds e g)
  b2
  d?8.(^\molto_rall a16) a8 a
  b( a) a cs,
  e(\f d) \appoggiatura { d16[ e] } d8( cs)->

  d4-> r
  \introd
  d'\pp a8. a16
  b8( a) g( fs)
  fs\< e e g
  b2\!
  b8. a16 a8 a
  cs( b) a( g)
  g( fs) fs( es)
  fs2
  d'4\pp a8. a16
  b8(\< a) g( fs)\!

  fs( e) e( g)
  b2
  d4^\molto_rall a8.(-. a16)-.
  b8(\> a) a( cs,)\!
  e( d) d( cs)
  d2\fermata
  \introe
  \appoggiatura s8 r c,[-.\p r c]-.
  r c[-. r c]-.
  r c[-. r c]-.
  r c[-. r c]-.

  r a[-. r a]-.
  r a[-. r a]-.
  r a[-. r a]-.
  r a[-. r d]-.
  r d[-. r d]-.
  r d[-. r d]-.
  r d[-. r d]-.
  r d[-. r d]-.
  r^\pora a[-. r cs]-.
  r cs[-. r e]-.

  \introf
  R2*2
  d'8\f d'4-> b8~->
  b a4-> fs8
  e d4-> cs8
  d4~-> d8 r
  d16-.\p e-.\< fs-. e-. d-. e-. fs-. e-.\!
  d^\simi e fs e d e fs d
  fs8\f e4-> ds8

  e4~ e8 r
  g16-.\p a-. b-. a-. g-. a-. b-. a-.
  g^\simi a b a g a b g
  fs g a g fs g a g
  fs g a g fs\cresc g a fs
  e^\rall fs gs fs e fs gs fs

  e fs gs fs e fs gs e
  a8 a4-> a8~->
  a a4-> a,8

  \introg
  d?\f d'4-> b8~->
  b a4-> fs8->
  e d4-> cs8
  d4~-> d8 r
  d16-. e-. fs-. e-. d-.\< e-. fs-. e-.

  d^\simi e fs e d e fs d
  fs8 e4-> ds8\!
  e4~ e8 r
  \introh
  g16-.\f a-. b-. a-. g-. a-. b-. a-.
  g-. a-. b-. a-. g-. b-. a-. g-.
  fs-. g-. a-. g-. fs-. g-. a-. g-.
  fs-. g-. a-. g-. fs-. g-. a-. fs-.

  e-. ds-. e-. fs-. g-. fs-. g-. a-.
  b\< a gs a gs a b cs\!
  d4 r
  a->\ff r
  d,2\fermata \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Violin"
  } \violin
  \layout { }
}

\score {
  \unfoldRepeats \violin
  \midi { }
}
