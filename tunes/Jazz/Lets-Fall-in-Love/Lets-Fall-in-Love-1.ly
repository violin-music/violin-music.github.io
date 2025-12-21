\version "2.24.4"
%\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Let's Fall In Love"
  composer =  "Harold Arlen"
}

PartPOneVoiceOne =  \relative f'' {
  
  \numericTimeSignature
  \time 4/4 
  \key f \major
  | % 1
   f2  c4  a4 | % 2
   d2  c8  e8  g8  f8 ~ | % 3
   f2  c4  a4 | % 4
   d2  bes8  a8  g8  c8 ~ | % 5
   c8  c8  c4  a8  g8 
  f8  bes8 ~ | % 6
   bes2  g8  f8  e8  a8 ~ | % 7
   a4.  a8  a2 ~ | % 8
  a1 | % 9
   f'2  c4  a4 | \barNumberCheck #10
   d2  c8  e8  g8  f8 ~ | % 11
   f2  c4  a4 | % 12
   d2  bes8  a8  g8  c8 ~ | % 13
   c8  c8  c4  a8  g8 
  f8  bes8 ~ | % 14
   bes2  g8  f8  e8  a8 ~ | % 15
   a4.  a8  a2 ~ | % 16
  a1 | % 17
  a'1 | % 18
  \times 2/3  {
     g4  f4  e4
  }
   d4  a8  bes8 | % 19
   b2  e2 ~ | \barNumberCheck #20
   e2  d2 | % 21
  g1 | % 22
  \times 2/3  {
     f4  e4  d4
  }
   c4  a8  bes8 | % 23
   c2  es2 | % 24
   d2  e2 | % 25
   f2  c4  a4 | % 26
   d2  c8  e8  g8  f8 ~ | % 27
   f2  c4  a4 | % 28
   d2  bes8  a8  g8  c8 ~ | % 29
   c8  c8  c4 \times 2/3 {
     a4  g4  f4
  }
  | \barNumberCheck #30
   d'2  bes8  a8  g4 | % 31
  f'1 ~ | % 32
   f2. r4 \bar "|."
}

PartPOneVoiceOneChords =  \chordmode {
  | % 1
  f2:6 d4:m7 s4 | % 2
  g2:m7 c8:7 s8 s8 s8 | % 3
  f2:6 d4:m7 s4 | % 4
  g2:m7 c8:7 s8 s8 s8 | % 5
  a8:m7 s8 s4 d8:m7 s8 s8 s8 | % 6
  g2:m7 c8:7 s8 s8 s8 | % 7
  a4.:7 s8 d2:7 | % 8
  c1:13.11 | % 9
  f2:6 d4:m7 s4 | \barNumberCheck #10
  g2:m7 c8:7 s8 s8 s8 | % 11
  f2:6 d4:m7 s4 | % 12
  g2:m7 bes8:m6 s8 s8 s8 | % 13
  a8:m7 s8 s4 d8:m7 s8 s8 s8 | % 14
  g2:m7 c8:7 s8 s8 s8 | % 15
  e4.:m7 s8 a2:7 | % 16
  a1:7 | % 17
  d1:m5 | % 18
  d4*2/3:m7 s1*1/6 s1*1/6 s4 s8 s8 | % 19
  g2:7 d2:m9 | \barNumberCheck #20
  g2:7 g2:7.9- | % 21
  f1:maj9 | % 22
  f4*2/3:5 s1*1/6 s1*1/6 s4 s8 s8 | % 23
  a2:m7 d2:7 | % 24
  g2:m7 c2:7 | % 25
  f2:6 d4:m7 s4 | % 26
  g2:m7 c8:7 s8 s8 s8 | % 27
  f2:6 d4:m7 s4 | % 28
  g2:m7 bes8:m6 s8 s8 s8 | % 29
  a8:m7 s8 s4 d4*2/3:m7 s1*1/6 s1*1/6 | \barNumberCheck #30
  g2:m7 c8:7 s8 s4 | % 31
  f1:5 | % 32
  s2. s4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t
  "Let's" fall in "love," Why should -- "n't" we\skip1 fall in "love?"
  Our hearts are made\skip1 of "it," "let's" take a chance\skip1 Why
  be a -- fraid\skip1 of "it?" \skip1 "Let's" close our "eyes," and
  make our own\skip1 par -- a -- "dise," Lit tle we know\skip1 of it
  Still we can try\skip1 to make a\skip1 go of "it." \skip1 We might
  have been meant for each oth er\skip1 To be or not to "be," let our
  hearts dis -- cov -- "er." "Let's" fall in "love," Why should --
  "n't" we\skip1 fall in "love?" Now is the time\skip1 for "it," while
  we are "young," "Let's" fall in "love." \skip1
}


% The score definition
\score {
  <<

    \context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
    \new Staff
    <<
      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
      >>
    >>

  >>
  \layout {}
}
\score {
  \unfoldRepeats \articulate {

    \context ChordNames = "PartPOneVoiceOneChords" { \PartPOneVoiceOneChords}
    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
      >>
    >>

  }
  \midi {\tempo 4 = 100 }
}

