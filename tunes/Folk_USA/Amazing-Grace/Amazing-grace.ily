\version "2.24.0"

global = {
  \time 3/4
  \partial 4 s4
  s4*3*15 s4*2
  \bar "|."
}
Key = { \key c \major }

i   = \relative c' { \tuplet 3/2 { e8( d c) } | e2 }

ii  = \relative c' { }

melody = \relative c' {
  \Key
  g8( c) c2 \i e8( d) c2 a4 | g2 
  g8( a) c2 \i d8( e) g2.~g2 
  e8( g) g2 \i e8( d) c2 a4 g2 
  g8( a) c2 \i d4 c2.~c2
}

verse_i = \lyricmode { 
  \set stanza = "1. "
  A -- maz -- ing grace! 
  How sweet the sound that saved a soul like me!
  I once was lost but now am found, was blind, but now I see. 
}
verseii = \lyricmode{ 
  \set stanza = "2. "
  'Twas grace that taught my heart to fear,
  And grace my fears re -- lieved;__
  How pre -- cious did that__ grace ap -- pear 
  The hour I__ first be -- lieved.__
}
verseiii = \lyricmode {
  \set stanza = "3. "
  Through man -- y dan -- gers, toils and snares,
  I have al -- read -- y __ come.
  'Tis grace hath __ brought us safe thus far,
  and grace will lead us home.__
}
verseiv = \lyricmode {
  \set stanza = "4. "
  When we've been there ten thou -- sand years
  Bright shin -- ing as the sun,
  We've no less days to sing God's praise
  Than when we'd first be -- gun.
}
versev = \lyricmode{ 
  \set stanza = "5. "
  The Lord has prom -- ised good to me,
  His word my hope se -- cures,
  He will my shield and por -- tion be,
  As long as life en -- dures.
}

changes = \chordmode {
  \transpose g c {
    r4 g4*3*2 c4*3 g4*3*3 d2 a4:m d4*3 g g:7 c g e:m a2:m7 d4:7 g2 c4 g2
  }
}
