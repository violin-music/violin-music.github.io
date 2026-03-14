\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "Up Sligo"
  subtitle = "AKA: The Creel Of Turf"
  composer = "Traditional"
  country = "Ireland"
  footnotes = ""
  source = "https://thesession.org/tunes/537#setting13483"
  genre = "Folk"
  subgenre = "Irish"
}

voicedefault =  {
  \time 6/8
  \key e \dorian
  \tempo 4. = 120
  \repeat volta 2 {
  e'8    b'    b'    b'    a'    g'
  fs'8    a'    a'    a'    g'    fs'    e'    b'    b'    g'
  b'8    d''  \bar "|"   a'    g'    fs'    e'4    d'8
  \break
  e' b'8    b'    b'    a'    g'    fs'    a'    a'    a'    b'
  cs''8  \bar "|"   d''    cs''    d''    b'    d''    b'
  }
  \alternative {
    {a'8    g'    fs'    e'4    d'8  }
    {a'8    g'    fs'    e'4    a'8  }
  }
\break
  \repeat volta 2 {
  b'    e''    e''    e''    d''    e''  \bar "|"   
  fs''
  e''8    fs''    d''    b'    a'  \bar "|"   b'    e''    e''    e''
  d''8    e''  \bar "|"   fs''    d''    cs''    d''4    a'8
  \break
  b'8    e''    e''    e''    d''    e''  \bar "|"   fs''    e''
  fs''8    d''    b'    a'  \bar "|"   b'    d''    b'    g'    b'
  d''8
  }
  \alternative {
    {  a'    g'    fs'    e'4    a'8   }
    {a'    g'    fs'8    e'4    d'8 }
  }
  \bar "||"
}

\score{
  <<

    \context Staff="default"
    {
      \voicedefault
    }

  >>
  \midi {}
}
