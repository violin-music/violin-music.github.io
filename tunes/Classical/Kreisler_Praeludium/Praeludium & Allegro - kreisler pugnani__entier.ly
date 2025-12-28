\version "2.19.32"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Praeludium & Allegro"
  subtitle = "after Giovanni Battista Pugnani"
  composer = "Fritz Kreisler (1875-1962)"
  country = "Austria"
  style = "classical"
}

global = {
  \key e \minor
  \numericTimeSignature
  \time 3/4
  \partial 8
  \tempo "Allegro molto moderato"
}

\paper{
        top-margin = 15\mm
        bottom-margin = 10\mm
        right-margin = 15\mm
        left-margin = 15\mm
        %after-title-space = 30\mm
        paper-width = 210\mm    
        %  #(set-global-staff-size 17.5) % taille des notes
        %  #(set-default-paper-size "a4")
        ragged-last-bottom = ##f % permet de remplir la dernière page
        % #(define page-breaking ly:page-turn-breaking)
        
       
        
        }

        
flute = \relative c'' {
  
  %Prelude
  \key e \minor
  \time 4/4
  \tempo "Allegro"
  
  e,4->\f b-> e-> b'-> e-> b-> e-> b'-> ^\markup {simile}
  e e, b' b, e e, b' b, e'' e, b' b, e e, b' b,
  c'' e, g c, fs a, c d, b'' d, fs b, e g, b c,
  a'' c, e a, b fs' g e \grace {e16 [(fs)]}
  e4 ds e fs b, b' e d c d e g fs e d a b d g, fs e g c, b as cs
  fs cs' ds b e e, c'! a, a' e' b' e,, b' b,,
  
  \bar "|."

\time 3/4
\tempo "Andante"

e~\fp e16 (b) e-- fs-- g-- e-- g-- a-- b-- g-- b-- ds-- e-- b-- e-- fs-- g-- e-- g-- a--

  
  
 
  \global
  b'8\p (e-.) d16 c b8-. a-. g-. fs-.
  e16-- fs-- e-- fs-- g-- a-- g-- a-- b-- g'-- fs-- e--
  ds fs a, c b a g fs a g fs e ds fs b, as b cs ds e fs g a b
  g,-.\p  b-. e-. b-. a-. c-. e-. c-. g-. b-. e-. b-. 
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
  
  \tuplet 3/2 {e16 fs \grace {a} g} fs4. e8-> e2.->\fermata
  
  \bar "|."

}

\score {
  \new Staff \with {
    instrumentName = "Flûte"
  } \flute
  \layout {page-count = 2 }
}


%{
convert-ly (GNU LilyPond) 2.19.49  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22, 2.19.24,
2.19.28, 2.19.29, 2.19.32
%}
