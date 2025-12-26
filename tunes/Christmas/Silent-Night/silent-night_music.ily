\version "2.24.4"
\language "english"

originalKey = bf % Original key for Silent Night (B♭ major)

melody = {
  \time 6/8  
  \key bf \major 
  \tempo 4. = 50
    f'8.( g'16) f'8 d'4. 
    f'8.( g'16) f'8 d'4. 
    c''4 c''8 a'4. 
    bf'4 bf'8 f'4. 
\break
    g'4 g'8 bf'8.( a'16) g'8 
    f'8. g'16 f'8 d'4. 
    g'4 g'8 bf'8. a'16 g'8 
    f'8. g'16 f'8 d'4. 
    \break
    c''4 c''8 ef''8. c''16 a'8 
    bf'4.( d'' )
    bf'8.( f'16) d'8 f'8. ef'16 c'8 
    bf4. ~ bf4 r8
    \bar "|."
}

words = \lyricmode {
  Si -- _ lent night, ho- ly night,
  all is calm, all is bright,
  'Round yon Vir- gin Mo- ther and Child,
  ho- ly in- fant so ten- der and mild,
  Sleep in hea- ven- ly peace,
  Sleep in hea- ven- ly peace.
}
