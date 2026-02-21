\version "2.16.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Praeludium et Allegro"
  subtitle = "after Giovanni Battista Pugnani"
  composer = "Fritz Kreisler (1875-1962)"
  country = "Austria"
  style = "classical"
}

\paper{
  %ragged-last-bottom = ##f % permet de remplir la dernière page
  % #(define page-breaking ly:page-turn-breaking)
}


Prelude = \relative c'' {
  % ==================
  % == Prelude
  % ==================
  
  \time 4/4
  \tempo "Allegro"

  e,4->\f b-> e-> b'-1->
  e-> b-> e-> b'-1-> ^\markup {simile}
  e-4 e, b' b,
  e e, b'-3 b,
  e'' e, b' b,
  e e, b'-3 b,
  \break
  c''-3 e, g c,
  fs a, c d,
  b''-2 d, fs b,-1
  e-4 g,-1 b c,
  a''\flageolet c, e a,
  b fs'-3 g e

  \break

  \grace {e16 [(fs)]} e4-2 ds e fs
  b,-2 b'-1 e d!
  c d e g
  fs e d a-1
  b d g,-2 fs
  e-0 g c, b
  as cs fs cs'

  \break

  ds b e e,-0
  c'!-3 a,-0 a'-1 e'-1
  b'-3 e,,-0 b'-4 b,,-2 \bar "|."
}


Andante = \relative c' {
  % ==================
  % == Andante
  % ==================
  \time 3/4
  \tempo "Andante"
  e-3~\fp e16 ( b-2 ) e-- fs-- g-- e-- g-- a--
  b-- g-- b-- ds-- e-- b-- e-- fs-- g-- e-- g-- a--

  \break

  b4 ~  b16 gs( f e)   d fs d c
  b16 d b a   gs16( b gs) f   e16( f e d)
  c4\downbow(  c16 a) c e     f16 c f g   
  a16 f a b   c16 a c f       a16( f a c)
  \break
  e4 e16^"Missing music" e e e r4  
  r4 r4 r4
  r4 r4 r4
  r4 r4 r4
  \break
  r4 r4 r4
  r4 r4 r4
  r4 r4 r4
  r4 r4 r4
  r4 r4 r4
  r4 r4 fs16 b g fs
  b2.\fermata
}

Allegro = \relative c'' {
  % ==================
  % == Allegro molto moderato
  % ==================
  \numericTimeSignature
  \time 3/4
  \tempo "Allegro molto moderato"
  \partial 8

  b8\p (e-.) d16 c b8-. a-. g-. fs-.
  e16-- fs-- e-- fs-- g-- a_4-- g-- a-- b-- g'-- fs-- e--
  ds fs a, c b a g fs a g fs e
  ds_1 fs b, as b cs ds_4 e fs g a b
  g-.\p  b-. e-. b-. a-. c-. e-. c-. g-. b-. e-. b-.
  a\f (g') c-- g-- e'-- g,-- c-- g-- (e g e c)
  d,-.\f c'-. fs-. c-. d,-. d'-. fs-. d-. d,-. c'-. fs-. c-.
  g (fs') b fs d' fs, b fs d (fs d b)
  e,-.\p b'-. g'-. b,-. e,-. c'-. g'-. c,-. e,-. b'-. g'-. b,-.
  fs (e') a e c' e, a e c (e c a)
  ds, b' fs' b, e, b' g' b, g b e b b, (fs') b cs ds b fs' ds b'8
  b8\p (e-.) d16 c b8-. a-. g-. fs-.
  e16-- fs-- e-- fs-- g-- a-- g-- a-- b-- g'-- fs-- e--
  ds fs a, c b a g fs a g fs e ds fs b, as b cs ds e fs g a b
  a, fs' b fs g, e' b' e, fs, d' b' d, e, b' e b a c e a, g c e g,
  fs e' a e fs, d' a' d, d, c' a' c,
  d, a' d a g b d g, fs a d fs,
  e d' g d e, c' g' c, d, b' g' b, e, b' e b a c e c g c e c
  g b e b fs b e b fs ds' b' b, e, (fs) g b e fs g b e8 r
  g16\f e d e d b g e d b g g'
  e c g a' e c g b' fs d g, c' g e g, d'' a fs g, e'' b g e c
  a' fs d' b g e c' a fs d c a
  g''\p e d e d b g e d b g g'
  e c g a' e c g b' fs d g, c' g e g, d'' a fs g, e'' b g e c
  a' fs d' b g e cs' b as fs e cs
  b' g fs g  fs d cs b fs d b b' g e cs' b fs d' b g e' cs b g'
  e b e cs b fs' d b fs d' b fs
  g e' b g e cs' b fs d' b fs d
  b'' g fs g  fs d cs b fs d b b' g e cs' b fs d' b g e' cs b g'
  e b e cs b fs' d b fs d' b fs
  g e' b g e cs' b fs d' b fs d
  b' as b cs d b d fs b b, a' b,
  gs' (b) gs e d b gs e b' d e d c! (a) b c e, a c e a a, g' a,
  fs' (a) fs d c a fs d a' c d c b (g) a b d, g b d g g, fs' g,
  e' (g) e d c g e d c e g b a (e) c e fs a c e fs a, e' (a,)
  ds b fs b ds b fs' ds b'8
  b8 (e-.) d16 c b8-. a-. g-. fs-.
  e16-- fs-- e-- fs-- g-- a-- g-- a-- b-- g'-- fs-- e--
  ds fs a, c b a g fs a g fs e ds fs b, as b cs ds e fs g a fs
  e8\p \trill g,16-. (b-.) e-. b-. g'-. e-. b'-. g-. e'-. b-.
  c8\p \trill e,16-. (a-.) c,-. e-. a,-. c-. e,-. g-. c,-. g'-.
  fs8\p \trill d16-. (fs-.) a-. d-. fs-. d-. a'-. fs-. d'-. a-.
  b8\p \trill g16-. (b-.) d,-. g-. b,-. d-. g,-. b-. d,-. fs-.
  e8\p \trill c16-. (e-.) g-. c-. e-. c-. g'-. e-. c'-. g-.
  a8\p \trill e16-. (a-.) c,-. e-. a,-. c-. e,-. a-. c,-. e-.
  ds8\p \trill b16-. (ds-.) fs-. b-. ds-. b-. fs'-. ds-. b'-. fs-.
  g8\p \trill e'16-. (cs-.) as-. cs-. as-. g-. e-. g-. e-. cs-.


  %cadence
  b,8--\f e16 (g) b ds e fs g b, g' e d! b' e, c a' e b g' e a, fs' e
  b,8 e16 (g) b ds e fs g b, g' e d! b' e, c a' e b g' e a, fs' e
  b,8--\f e16 (g) b ds e fs g b, g' e d! b' e, c a' e b g' e e c' e,
  d b' e, c a' e fs d' e, e c' e,
  d b' e, g e' e, fs d' e, e c' e, a fs' e, g e' e, fs ds' e, g e' e,
  a fs' e, a a' e, b' g' e, g e' e,
  b' g' e, a fs' e, fs d' e, a fs' e,
  g e' e, e c' e, g e' e, fs d' e,
  d b' e, fs d' e, e c' e, c a' e
  e c' e, d b' e, b g' e d b' e, c a' e a, fs' e c a' e b g' e
  a, fs' e b g' e c a' e b g' e
  d b' e, cs as' e c a' e b g' e
  a, fs' e e c' e, c a' e a, fs' e
  as, g' e e cs' e, cs as' e as, g' e
  b gs' e f d' e, d b' e, b gs' e c a' e fs ds' e, ds c' e, c a' e
  cs as' e g e' e, e cs' e, cs as' e
  as, g' e g, e' (cs) cs as g e cs as'

  b8\f e16 e e8 e e e e b16 b b8 e g e
  e b16 b b8 ds b' b,
  e'\ff d16 c b8-. a-. g-. fs-.
  e16-- fs-- e-- fs-- g-- a-- g-- a-- b-- g'-- fs-- e--
  ds fs a, c b a g fs a g fs e ds fs b, as b cs ds e fs g a fs
  e,8 e'16 e e8 gs, e' d c
  e,16 c e a c e a c a g
  fs8 d16 d d8 fs, d' c b
  d,16 b d g b d g b g fs
  e8 b16 b b8 b e d c
  e,16 c e a c e a g fs e
  ds8 b'16 b b8 g e c b b'16 b b8 g e c b
  b'16 b b8 g e c b4
  b,\fermata ~b16 cs32 ds e fs g a
  b4 \tempo "Andante" a8 g \grace {e16 ([fs g])} fs4\trill ~fs8\f

  \times 2/3 {e16 fs \grace {a} g} fs4. e8-> e2.->\fermata

  \bar "|."

}


music =  {
  \override Fingering.color = "grey"

  \key e \minor

  \Prelude

  \Andante

  \Prelude

  \break

  \Allegro

}

\score {
  \new Staff \with {
  } \music
  \layout {
    %  page-count = 2
  }
}
