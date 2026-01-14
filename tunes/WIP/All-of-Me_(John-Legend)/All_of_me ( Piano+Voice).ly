\version "2.24.0"
\language "english"
\include "../../common/common-header.ily"

\header {
  title = "All of Me"
  subtitle = "John Legend"
  tagline = ""
}

chordNames = \chordmode {
  f1:m  df1   af1  ef1
  f1:m  df1   af1  ef1
 
}

breaks_Four_Measures = {
  s1 * 4 \break  % 1-11
  \repeat unfold 22 {
    s1 * 4 \break  % 12- 51
  }
  %s1 * 5
}

\paper {
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  % ragged-bottom = ##t

}
melodyOne =  \relative a' {
  \key f \minor
  \numericTimeSignature\time 4/4
  | % 1
  %  \compressEmptyMeasures
  R1*4 | % 9
  
  
  r2 bf8 c8 c4 |
  c8 c8 c4 c4 c8( af8) | % 11
  af2 bf8 c8 c4  | % 12
  c8 bf8 c4 c8 bf8 af8 af8 ( | % 13
  f4. ) af8 c8 c4. | % 14
  df2 c8 af4. | % 15
  df2 c8 af4 af8 | % 16
  bf2 c8 bf4 f8 ( | % 17
  f2 ) bf8 c8 c4 | % 18
  c8 bf8 c4 c8 bf8 af8 af8 ~  | % 19
  af2 c8 c8 c4 |
  ef8 df8 c4 c8 bf8 af8 af8 \glissando ( | % 21
  f2 ) c'8 c4. | % 22
  df2 c8 af4 af8 | % 23
  df4 df4 c8 af4 af8 | % 24
  bf2 c8 bf4. | % 25
  df2. r8 af8 | % 26
  f'4. ef4 df4 c8 ~  | % 27
  c4. bf4 af4 g8 ~ | % 28
  g4. f4 ef4 f8 ~ | % 29
  f1 |
  f'4. f4 ef8 df8 c8 ~ | % 31
  c4. c4 bf8 af8 bf8 ~ | % 32
  bf2.. c8 | % 33
  ef2. c8 f8 ~ | % 34
  f2 c2 | % 35
  bf2. af8 c8 ~ | % 36
  c2 c8 c4. | % 37
  bf4 bf4 bf4 af8 bf8 | % 38
  bf2 c8 c4. | % 39
  bf4 bf4 bf4 af8 bf8 |
  bf2 c8 c4. | % 41
  ef2. c8 f8 ~  | % 42
  f4. c8 f8 c4. | % 43
  bf2. af8 c8 ~ | % 44
  c2 c8 c4. | % 45
  bf4 bf4 bf4 af8 bf8 | % 46
  bf2 c8 c4. | % 47
  bf4 bf4 bf4 af8 bf8 | % 48
  bf4. c8 c8 df8 ef8 af8  ~ ( | % 49
  af4.  g2 ) f8 ~ |
  f4. ef4. c8 c8 ~ | % 51
  c1 | % 52
  r4. c8 c8 df8 ef8 af8 ~
  af4. ( g2 ) f8 ~
  f4. ( ef4. ) c8 c8 ~
  c2. c8 ( bf8 ) ~ | % 56
  bf1 | % 57
}
melodyTwo =  \relative a' {
  \key f \minor
  \numericTimeSignature
  \time 4/4 | % 1
  %\compressEmptyMeasures
  R1*4 | % 9
  r2 bf8^\downbow c8 c4  | % 58
  c8 c c4 c8 c c8( af8)   | % 59
  af2 bf8 c8 c8 c8 |
  c8 bf c4 c8 bf8 af8 af8 ( | % 61
  f4. ) af8 c8 c4. | % 62
  df2 c8 af4.   | % 63
  df2 c8 af4 af8  | % 64
  bf4. bf8  c8 bf8 bf8 f8 (
  f2) bf8 c8 c4  | % 66
  c8 bf8 c4 c8 bf8 af af ~ | % 67
  af4. af8 c8 c8 c8 c8  | % 68
  ef8 df8 c4 c8 bf8 af8 af ( | % 69
  | f4.) f8 c'8 c4.
  | df2 c8 af4 af8
  df4 df4 c8 af4 af8  | % 72
  bf2 c8 bf4.  | % 73
  df2. r8 af8 | % 74
  f'4. ef4 df4 c8 ~ | % 75
  c4. bf4 af4 g8 ~ | % 76
  g4. f4 ef4 f8 ~ | % 77
  f1 | % 78
  f'4. f4 ef8 df8 c8 ~ | % 79
  c4. c4 bf8 af8 bf8 ~ |
  bf2.. c8 | % 81
  ef2. c8 f8 ~ | % 82
  f2 c2 | % 83
  bf2. af8 c8 ~ | % 84
  c2 c8 c4. | % 85
  bf4 bf4 bf4 af8 bf8 | % 86
  bf2 c8 c4.  | % 87
  bf4 bf4 bf4 af8 bf8 | % 88
  bf2 c8 c4. | % 89
  ef2. c8 f8 ~ |
  f4. c8 af'8 g4. | % 91
  f2. ef8 c8 ~ | % 92
  c2 c8 c4. | % 93
  bf4 bf4 bf4 af8 bf8 | % 94
  bf2 c8 c4.  | % 95
  bf4 bf4 bf4 af8 bf8 | % 96
  % a4. b8 b8 c8 d8 g8 ~ | % 97
  % g4. ( fis2 ) e8 ~ | % 98
  bf4. c8 c8 df8 ef8 af8  ~ ( | % 49

  af4.  g2 ) f8 ~ |


  f4. ef4. c8 c8 ~ | % 99
  c1
  r4. c8 c8 df8 ef8 af8 ~
  af4. ( g2 ) f8 ~
  f4. ( ef4. ) c8 c8 ~
  c2. c8 ( bf8 ) ~
  bf8 c8 df8 af'4 g4 f8 ~
  f4. ( c16 ) bf16 af2
  f'4. ef4 df4 af'8 ~
  af4. g4 f4 ef8 ~ | % 108
  ef4. df4 c4 bf8 ~ | % 109
  bf1 |
  f'4. ef4 df4 af'8 ~  | % 111
  af4. g4 f4 ef8 ~ | % 112
  ef2.. c8 | % 113
  ef2. c8 f8 ~ | % 114
  f2 c2 | % 115
  bf2. af8 c8 ~ | % 116
  c2 c8 c4. | % 117
  bf4 bf4 bf4 af8 bf8 | % 118
  bf2 c8 c4. | % 119
  bf4 bf4 bf4 af8 bf8
  bf2 c8 c4. | % 121
  ef2. c8 f8 ~ | % 122
  f4. c8 af'8 g4. | % 123
  f2. ef8 c8 ~ | % 124
  c2 c8 c4. | % 125
  bf4 bf4 bf4 af8 bf8 | % 126
  bf2 c8 c4. | % 127
  bf4 bf4 bf4 af8 bf8  | % 128
  bf4. c8 c8 df8 ef8 af8 ~ | % 129
  af4. ( g2 ) f8 ~ |
  f4. ( ef4. ) c8 c8 ~ | % 131
  c1 | % 132
  r4. c8 c8 df8 ef8 af8 ~ | % 133
  af4. ( g2 ) f8 ~ | % 134
  f4. ef4. c8 c8 ~ | % 135
  c1
  r2 c8 df8 ef8 af8 ~ | % 137
  af4 ( bf8 ) g4. af8 f8 ~ | % 138
  f4. ( ef4. ) c8 c8 ~ | % 139
  c1 |
  r4. c8 c8 df8 ef8 af8 ~ | % 141
  af4. ( g2 ) f8 ~ | % 142
  f4. ef4. c8 c8 ~ | % 143
  c2. c8 ( bf8 ) ~ | % 144
  bf1 \bar "|."
}

wordsStanzaOne =  \lyricmode {
  \set stanza = #"1. "
  What would I do with -- out your smart__ mouth,
  Draw -- ing me in and you kick -- ing me out __
  You got my head spin -- "ning," no kid -- ding,
  I can't pin you down __
  What's go -- ing on in that beau -- ti -- ful mind,
  "I'm" on your ma -- gi -- cal mys -- te -- ry ride __
  And "I'm" so
  diz -- "zy," "don't" know what hit "me," but "I'll" be al --  right.

  My head's un -- der wa -- ter but I'm brea -- thing fine,
  You're cra -- zy and I'm out of my mind,
  Cause all of me loves all of you,
  Love your curves and all your ed -- ges,
  All your per -- fect im -- per -- fec -- tions,

  Give your all to me, I'll give my all to you
  You're my end and my be -- gin -- ning,
  E -- ven when I lose I'm win -- ning.
  Cause I give you all __  \skip4 \skip4 of me,
  And you give me all __  \skip4  of you, oh, __
}


wordsStanzaTwo =  \lyricmode {
  \set stanza = #"2. "
  How ma -- ny times do I have to tell__ you,
  E -- ven when you're cry -- ing you're beau -- ti -- ful too __
  The world is beat -- ing you down,
  I'm -_ a -- round through ev -- er -- ry mood __
  You're -_ my down -_ fall, You're -_ my muse, my worst -_ dis -- trac -- -_ tion
  my rhy -- thm and blues __
  I can't stop sing -- ing -_ it's ring -_ -- in' in -__  my head for you

  My head's un -- der wa -- ter but I'm brea -- thing fine,
  You're cra -- zy and I'm out of my mind,
  Cause all of me loves all of you,
  Love your curves and all your ed -- ges,
  All your per -- fect im -- per -- fec -- tions,

  Give your all to me, I'll give my all to you
  You're my end and my be -- gin -- ning,
  E -- ven when I lose I'm win -- ning.
  Cause I give you all __  \skip4 \skip4 of me,
  And you give me all __  \skip4  of you, oh, __

  Give me all of you, \skip4 \skip4 Cards on the ta -- ble
  "we're" both show -- ing "hearts," Risk -- ing it all though "it's"
  "hard," Cause all of me loves all of "you," Love your curves and all
  your ed -- "ges," All your per -- fect im -- per -- fec -- "tions,"
  Give your all to "me," "I'll" give my all to "you," "You're" my end
  and my be -- gin -- "ning,"
  E -- ven when I lose "I'm" win --
  "ning."
  Cause I give you all \skip4 of "me," And you give me all
  \skip4 \skip4 of "you," I give you all \skip4 \skip4 \skip4 of "me,"
  And you give me all \skip4 \skip4 of "you," "oh,"

}




PartPTwoVoiceOne =  \relative e' {
  \clef "treble"
  \key af \major
  \numericTimeSignature
  \time 4/4 | % 1
  <f c'>4. <f c'>4. <f c'>4 | % 2
  <f df'>4. <f df'>4. <f df'>4 | % 3
  <ef c'>4. <ef c'>4. <ef c'>4 | % 4
  <ef bf'>4. <ef bf'>4. <ef bf'>4 | % 5
  <f c'>4. <f c'>4. <f c'>4 | % 6
  <f df'>4. <f df'>4. <f df'>4 | % 7
  <ef c'>4. <ef c'>4. <ef c'>4 | % 8
  <ef bf'>4. <ef bf'>4. <ef bf'>4 | % 9
  <f c'>4. <f c'>4. <f c'>4 | \barNumberCheck #10
  <f df'>4. <f df'>4. <f df'>4 | % 11
  <ef c'>4. <ef c'>4. <ef c'>4 \break | % 12
  <ef bf'>4. <ef bf'>4. <ef bf'>4 | % 13
  <f c'>4. <f c'>4. <f c'>4 | % 14
  <f df'>4. <f df'>4. <f df'>4 | % 15
  <ef c'>4. <ef c'>4. <ef c'>4 | % 16
  <ef bf'>4. <ef bf'>4. <ef bf'>4 | % 17
  <c f c'>4. <c f>4. <c f>4 | % 18
  <c f af>4. <c f af>4. <c f af>4 \break | % 19
  <c ef af>4. <c ef af>4. <c ef af>4 | \barNumberCheck #20
  <bf ef g>4. <bf ef g>4. <bf ef g>4 | % 21
  <c f af>4. <c f af>4. <c f af>4 | % 22
  <df ef f af>4. <df ef f af>4. <df ef f af>4 | % 23
  <c ef af>4. <c ef af>4. <c ef af>4 | % 24
  <bf g' bf>4. bf'8 bf,4 ef8 bf'8 | % 25
  c,8 df8 f8 bf8 c,8 df8 f8 bf8 | % 26
  df4. c4. bf4 \break | % 27
  <c, ef af>4. <c ef af>4. ef8 g8 ~ | % 28
  g4. ef8 ~ ef2 | % 29
  c8 df8 f8 bf8 c,8 df8 f8 bf8 | \barNumberCheck #30
  df4. c4. bf4 | % 31
  <c, ef af>4. <c ef af>4. ef8 g8 ~ | % 32
  <ef g>4. bf'8 ef2 | % 33
  <af, c ef>8 \arpeggio \arpeggio \arpeggio c8 af8 ef'8 ef,8 af8 ef'8 ef,8 | % 34
  ef'8 c8 af8 ef'8 c8 af8 ef4 \break | % 35
  c'8 c,8 f8 <c g'>4 af'8 c,8 f8 ~ | % 36
  f8 c8 f8 <c g'>4 af'8 c,8 c'8 | % 37
  <df, f bf>4. <df f bf>4 df8 df8 f8 | % 38
  df'4. c4. af8 bf8 ~ | % 39
  <df, f af bf>4 df8 <f af bf>4. df8 bf'8 ~ | \barNumberCheck #40
  <ef, g bf>4. ef8 ef'2 | % 41
  <af, c ef>8 \arpeggio \arpeggio \arpeggio c8 af8 ef'8 c8 af8 ef'8 c8
  \break | % 42
  ef8 c8 af8 ef'8 c8 af8 ef8 ef8 | % 43
  f8 c8 f8 <c g'>4 af'8 c,8 f8 ~ | % 44
  f8 c8 f8 <c g'>4 af'8 c,8 c'8 | % 45
  <df, bf'>8 df8 f8 df8 bf'8 df,8 df8 f8 | % 46
  df'8 df,8 f8 c'4 df,8 af'8 bf8 ~ | % 47
  <df, f af bf>4 df8 <f af bf>4. af8 bf8 ~ | % 48
  <ef, g bf>4. ef8 ef'2 \pageBreak | % 49
  af8 c,8 f,8 g'4 f,4 f'8 | \barNumberCheck #50
  df8 af8 df,8 ef'4 df,8 df'8 ef8 ~ | % 51
  <ef, af c ef>4. <bf' ef>4. af8 ef'8 | % 52
  <f, g bf>2 ~ ~ <ef g bf>2 | % 53
  af'8 c,8 f,8 g'4 f,4 f'8 | % 54
  df8 af8 df,8 ef'4 df,8 df'8 ef8 ~ | % 55
  <ef, af c ef>4. <bf' ef>4. af8 ef'8 | % 56
  <f, g bf>1 | % 57
  <c f c'>4. <c f>4. <c f>4 \break | % 58
  <df f af>4. <df f af>4. <f af>4 | % 59
  <c ef af>4. <c ef af>4. <c ef af>4 | \barNumberCheck #60
  <bf ef g>4. <bf ef g>4. <bf ef g>4 | % 61
  <c f af>4. <c g'>4. <c f af>4 | % 62
  <f af>4. <ef af>4. df8 af'8 ~ | % 63
  <c, ef af>4. <c ef af>4. <c ef af>8 bf'8 ~ | % 64
  <ef, g bf>2 <g bf>4. af8 \break | % 65
  <c, f af>4. <c g'>4. <c f af>4 | % 66
  <df f af>4. ef4 df8 df8 af'8 | % 67
  <c, ef af>4. <c ef af>4. <c ef af>4 | % 68
  <bf ef g>4. bf'8 bf,4 <bf ef g>4 | % 69
  <f' g c>4. <f af c>4 f8 <af c>4 | \barNumberCheck #70
  <df, ef f af>4. <df af'>4. df8 af'8 \break | % 71
  <c, ef af>4. <c ef af>4. <c ef>8 af'8 | % 72
  <bf, ef g>4. <ef bf'>4. bf8 bf'8 | % 73
  c,8 df8 f8 bf8 c,8 df8 f8 bf8 | % 74
  df4. c4. bf4 | % 75
  <c, ef af>4. <c ef af>4. ef8 g8 ~ | % 76
  g4. ef8 ~ ef2 | % 77
  c8 df8 f8 bf8 c,8 df8 f8 bf8 | % 78
  df4. c4. bf4 \break | % 79
  <c, ef af>4. <c ef af>4. ef8 ~ <ef g>8 ~ ~ | \barNumberCheck #80
  <ef g>4. bf'8 ef2 | % 81
  <af, c ef>8 \arpeggio \arpeggio \arpeggio c8 af8 ef'8 ef,8 af8 ef'8 ef,8 | % 82
  ef'8 c8 af8 ef'8 ef,8 af8 ef'4 | % 83
  <af, c>8 c,8 f8 <c g'>4 af'8 c,8 f8 ~ | % 84
  f8 c8 f8 <c g'>4 af'8 c,8 c'8 | % 85
  <df, f bf>4 df8 bf'4 df,8 df8 f8 | % 86
  df'8 df,8 f8 c'8 df,8 df16 f16 af8 bf8 ~ \break | % 87
  <df, f af bf>4 df8 <f af bf>4. df8 bf'8 ~ | % 88
  <ef, g bf>4. ef8 ef'2 | % 89
  <af, c ef>8 \arpeggio \arpeggio \arpeggio c8 af8 ef'8 ef,8 af8 ef'8 ef,8 |
  \barNumberCheck #90
  ef'8 c8 af8 ef'8 ef,8 af8 ef'8 ef,8 | % 91
  c'8 c,8 f8 <c g'>4 af'8 c,8 f8 ~ | % 92
  f8 c8 f8 <c g'>4 af'8 c,8 c'8 | % 93
  <df, bf'>8 df8 f8 df8 bf'8 df,8 df8 f8 | % 94
  df'8 df,8 f8 c'4 df,8 af'8 bf8 \break | % 95
  <df, f af bf>4. <f af bf>4. af8 bf8 | % 96
  <ef, g bf>4. ef8 ef'2 | % 97
  \grace { f32 g32 } af8 c,8 f,8 g'4 f,4 f'8 | % 98
  df8 af8 df,8 ef'4 df,8 df'8 c8 ~ | % 99
  <af c>8 ef8 <af c>8 <bf ef>4 af4 ef'8 | \barNumberCheck #100
  <f, g bf>4. ef8 ef'2 | % 101
  af8 c,8 f,8 g'4 f,4 f'8 | % 102
  df8 af8 df,8 <df' ef>4 df,8 df'8 ef8 ~ \pageBreak | % 103
  <af, bf c ef>8 ef8 af8 <bf ef>4. af8 ef'8 | % 104
  <f, g bf>4. ef8 <bf' ef>8 g8 f8 ef'8 | % 105
  <f, bf df>4. <c f>4 <df f>4 <c f>8 | % 106
  <df bf'>8 f8 df8 c'4 df4 c8 ~ | % 107
  <ef, c' ef>4. <ef bf' ef>4. af8 ef'8 | % 108
  <ef, f bf>4. ef2 bf'8 | % 109
  c,8 df8 f8 <df f bf>4. f4 | \barNumberCheck #110
  <f bf df>4. <ef c'>4 <df bf'>4 ef'8 ~ \break | % 111
  <ef, af c ef>4. <ef af>4. ef8 bf'8 ~ | % 112
  <ef, g bf>1 | % 113
  <ef af c ef>1 ~ ~ ~ ~ | % 114
  <ef af c ef>1 | % 115
  <c g' af c>1 ~ ~ ~ ~ | % 116
  <c g' af c>1 | % 117
  <df f bf df>1 ~ ~ ~ ~ | % 118
  <df f bf df>1 | % 119
  <ef g bf ef>1 ~ ~ ~ ~ \break | \barNumberCheck #120
  <ef g bf ef>1 | % 121
  <af c ef>8 \arpeggio \arpeggio \arpeggio c8 af8 ef'8 ef,8 af8 ef'8 ef,8 | % 122
  ef'8 c8 af8 ef'8 c8 af8 ef'8 ef,8 | % 123
  c'8 c,8 f8 <c g'>4 af'8 c,8 f8 ~ | % 124
  f8 c8 f8 <c g'>4 af'8 c,8 c'8 | % 125
  <df, bf'>8 df8 f8 bf4 df,8 f8 bf8 | % 126
  df8 df,8 f8 c'4 df,8 af'8 bf8 | % 127
  <df, f af bf>4. <f af bf>4. df8 bf'8 ~ \break | % 128
  <ef, g bf>4. ef8 ef'2 | % 129
  af8 c,8 f,8 g'4 f,4 f'8 | \barNumberCheck #130
  df8 af8 df,8 ef'4 df,8 c'8 c8 | % 131
  af8 ef8 af8 <bf ef>4 af4 ef'8 | % 132
  <f, g bf>1 | % 133
  af'8 c,8 f,8 g'4 f,4 f'8 | % 134
  df8 af8 df,8 <df' ef>4 df,8 df'8 ef8 ~ | % 135
  <af, bf c ef>8 ef8 af8 <bf ef>4. af8 ef'8 \break | % 136
  <ef, g bf>2 ef2 | % 137
  af'8 af,8 c8 f8 ~ f2 | % 138
  af8 af,8 df8 f8 ~ f2 | % 139
  ef8 ef,8 af8 c4. ef4 | \barNumberCheck #140
  <g, bf>1 | % 141
  af'8 af,8 c8 f8 ~ f2 | % 142
  af8 af,8 df8 f8 ~ f2 | % 143
  ef8 ef,8 af8 c4. ef4 | % 144
  <g, bf>1 \bar "|."
}

PartPTwoVoiceOneChords =  \chordmode {
  | % 1
  f4.:m5 s4. s4 | % 2
  df4.:5 s4. s4 | % 3
  af4.:5 s4. s4 | % 4
  ef4.:5 s4. s4 | % 5
  f4.:m5 s4. s4 | % 6
  df4.:5 s4. s4 | % 7
  af4.:5 s4. s4 | % 8
  ef4.:5 s4. s4 | % 9
  f4.:m5 s4. s4 | \barNumberCheck #10
  df4.:5 s4. s4 | % 11
  af4.:5 s4. s4 | % 12
  ef4.:5 s4. s4 | % 13
  f4.:m5 s4. s4 | % 14
  df4.:5 s4. s4 | % 15
  af4.:5 s4. s4 | % 16
  ef4.:5 s4. s4 | % 17
  f4.:m5 s4. s4 | % 18
  df4.:5 s4. s4 | % 19
  af4.:5 s4. s4 | \barNumberCheck #20
  ef4.:5 s4. s4 | % 21
  f4.:m5 s4. s4 | % 22
  df4.:5 s4. s4 | % 23
  af4.:5 s4. s4 | % 24
  ef4.:5 s8 s4 s8 s8 | % 25
  bf8:m5 s8 s8 s8 s8 s8 s8 s8 | % 26
  s4. s4. s4 | % 27
  af4.:5 s4. s8 s8 | % 28
  ef4.:5 s8 s2 | % 29
  bf8:m5 s8 s8 s8 s8 s8 s8 s8 | \barNumberCheck #30
  s4. s4. s4 | % 31
  af4.:5 s4. s8 s8 | % 32
  ef4.:5 s8 s2 | % 33
  af8:5 s8 s8 s8 s8 s8 s8 s8 | % 34
  s8 s8 s8 s8 s8 s8 s4 | % 35
  f8:m5 s8 s8 s4 s8 s8 s8 | % 36
  s8 s8 s8 s4 s8 s8 s8 | % 37
  bf4.:m5/+df s4 s8 s8 s8 | % 38
  s4. s4. s8 s8 | % 39
  bf4:m7/+ef s8 s4. s8 s8 | \barNumberCheck #40
  ef4.:5 s8 s2 | % 41
  af8:5 s8 s8 s8 s8 s8 s8 s8 | % 42
  s8 s8 s8 s8 s8 s8 s8 s8 | % 43
  f8:m5 s8 s8 s4 s8 s8 s8 | % 44
  s8 s8 s8 s4 s8 s8 s8 | % 45
  bf8:m5/+df s8 s8 s8 s8 s8 s8 s8 | % 46
  s8 s8 s8 s4 s8 s8 s8 | % 47
  bf4:m7/+ef s8 s4. s8 s8 | % 48
  ef4.:5 s8 s2 | % 49
  f8:m5 s8 s8 s4 s4 s8 | \barNumberCheck #50
  df8:5 s8 s8 s4 s8 s8 s8 | % 51
  af4.:5 s4. s8 s8 | % 52
  ef2:5 s2 | % 53
  f8:m5 s8 s8 s4 s4 s8 | % 54
  df8:5 s8 s8 s4 s8 s8 s8 | % 55
  af4.:5 s4. s8 s8 | % 56
  ef1:5 | % 57
  f4.:m5 s4. s4 | % 58
  df4.:5 s4. s4 | % 59
  af4.:5 s4. s4 | \barNumberCheck #60
  ef4.:5 s4. s4 | % 61
  f4.:m5 s4. s4 | % 62
  df4.:5 s4. s8 s8 | % 63
  af4.:5 s4. s8 s8 | % 64
  ef2:5 s4. s8 | % 65
  f4.:m5 s4. s4 | % 66
  df4.:5 s4 s8 s8 s8 | % 67
  af4.:5 s4. s4 | % 68
  ef4.:5 s8 s4 s4 | % 69
  f4.:m5 s4 s8 s4 | \barNumberCheck #70
  df4.:5 s4. s8 s8 | % 71
  af4.:5 s4. s8 s8 | % 72
  ef4.:5 s4. s8 s8 | % 73
  bf8:m5 bf8:m5 s8 s8 s8 s8 s8 s8 | % 74
  s4. s4. s4 | % 75
  af4.:5 af4.:5 s8 s8 | % 76
  ef4.:5 ef4.:5 s4 | % 77
  bf8:m5 bf8:m5 s8 s8 s8 s8 s8 s8 | % 78
  s4. s4. s4 | % 79
  af4.:5 af4.:5 s8 s8 | \barNumberCheck #80
  ef4.:5 ef4.:5 s4 | % 81
  af8:5 s8 s8 s8 s8 s8 s8 s8 | % 82
  s8 s8 s8 s8 s8 s8 s4 | % 83
  f8:m5 s8 s8 s4 s8 s8 s8 | % 84
  s8 s8 s8 s4 s8 s8 s8 | % 85
  bf4:m5/+df s8 s4 s8 s8 s8 | % 86
  s8 s8 s8 s8 s8 s16 s16 s8 s8 | % 87
  bf4:m7/+ef s8 s4. s8 s8 | % 88
  ef4.:5 s8 s2 | % 89
  af8:5 s8 s8 s8 s8 s8 s8 s8 | \barNumberCheck #90
  s8 s8 s8 s8 s8 s8 s8 s8 | % 91
  f8:m5 s8 s8 s4 s8 s8 s8 | % 92
  s8 s8 s8 s4 s8 s8 s8 | % 93
  bf8:m5/+df s8 s8 s8 s8 s8 s8 s8 | % 94
  s8 s8 s8 s4 s8 s8 s8 | % 95
  bf4.:m7/+ef s4. s8 s8 | % 96
  ef4.:5 s8 s2 | % 97
  f32:m5 s16. s8 s8 s4 s4 s8 | % 98
  df8:5 s8 s8 s4 s8 s8 s8 | % 99
  af8:5 s8 s8 s4 s4 s8 | \barNumberCheck #100
  ef4.:5 s8 s2 | % 101
  f8:m5 s8 s8 s4 s4 s8 | % 102
  df8:5 s8 s8 s4 s8 s8 s8 | % 103
  af8:5 s8 s8 s4. s8 s8 | % 104
  ef4.:5 s8 s8 s8 s8 s8 | % 105
  bf4.:m5 s4 s4 s8 | % 106
  bf8:m7 s8 s8 s4 s4 s8 | % 107
  af4.:5 s4. s8 s8 | % 108
  ef4.:5 s2 s8 | % 109
  bf8:m5 s8 s8 s4. s4 | \barNumberCheck #110
  s4. s4 s4 s8 | % 111
  af4.:5 s4. s8 s8 | % 112
  ef1:5 | % 113
  af1:5 | % 114
  s1 | % 115
  f1:m5 | % 116
  s1 | % 117
  df1:5 df1:5 df1:5 df1:5 df1:5 df1:5 df1:5 | % 118
  ef1:5 ef1:5 ef1:5 | \barNumberCheck #120
  af8:5 | % 122
  f8:m5 | % 124
  df8:5 | % 126
  bf4.:m7/+ef s8 s8 | % 128
  ef4.:5 s8 s2 | % 129
  f8:m5 s8 s8 s4 s4 s8 | \barNumberCheck #130
  df8:5 s8 s8 s4 s8 s8 s8 | % 131
  af8:5 s8 s8 s4 s4 s8 | % 132
  ef1:5 | % 133
  f8:m5 s8 s8 s4 s4 s8 | % 134
  df8:5 s8 s8 s4 s8 s8 s8 | % 135
  af8:5 s8 s8 s4. s8 s8 | % 136
  ef2:5 s2 | % 137
  f8:m5 s8 s8 s8 s2 | % 138
  df8:5 s8 s8 s8 s2 | % 139
  af8:5 s8 s8 s4. s4 | \barNumberCheck #140
  ef1:5 | % 141
  f8:m5 s8 s8 s8 s2 | % 142
  df8:5 s8 s8 s8 s2 | % 143
  af8:5 s8 s8 s4. s4 | % 144
  ef1:5 \bar "|."
}

PartPTwoVoiceTwo =  \relative c'' {
  \clef "treble"
  \key af \major
  \numericTimeSignature\time 4/4 s1*11
  \break s1*7 \break s1*8 \break s1*8 \break s1*3 | % 38
  df8 df,8 f8 c'4 df,4. s1*3 \break s1*7 \pageBreak s1*9 \break s1*7
  \break s1*6 \break s1*8 \break s1*8 \break s1*8 \break s1*8
  \pageBreak s1*8 \break s1*9 \break s1*8 \break s1*8 \break s1*9 \bar
  "|."
}

PartPTwoVoiceFive =  \relative e {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 f1 | % 2
  df1 | % 3
  af1 | % 4
  ef'1 | % 5
  <f, f'>1 | % 6
  df'1 | % 7
  af2 ~ af8 af'4. | % 8
  ef1 | % 9
  f,1 | \barNumberCheck #10
  df'1 | % 11
  af'1 \break | % 12
  ef1 | % 13
  f,1 | % 14
  df'1 | % 15
  af2 ~ af8 af'4. | % 16
  ef1 | % 17
  f,2 ~ f8 f'4. | % 18
  df2 ~ df8 df4. \break | % 19
  af2 ~ af8 af'4. |
  ef2 ~ ef8 ef4. | % 21
  f2 ~ f8 f4. | % 22
  df2 ~ df8 df4. | % 23
  af2 ~ af8 af'4. | % 24
  ef2 ~ ef8 ef4. | % 25
  bf4. bf'8 ~ bf2 | % 26
  bf8 df8 bf4 c8 bf4. \break | % 27
  af,2 ~ af8 af'4. | % 28
  <ef bf'>4. <ef bf'>4 ef8 bf'4 | % 29
  bf,4. bf'8 ~ bf2 | \barNumberCheck #30
  bf8 df8 bf4 c8 bf4. | % 31
  af,2 ~ af8 af'4. | % 32
  <ef bf'>1 | % 33
  af,4. af'4. af4 | % 34
  af2 af2 \break | % 35
  f1 | % 36
  f,2. f'4 | % 37
  df1 | % 38
  df1 | % 39
  <ef, ef'>2 ~ ~ <ef ef'>8 ef'4. ~ | \barNumberCheck #40
  <ef, ef'>1 | % 41
  af4. af'4. af4 \break | % 42
  af2 af2 | % 43
  <f, f'>4. f'4. f4 | % 44
  f4. f,4. f'4 | % 45
  df1 | % 46
  df2 ~ df8 df4. | % 47
  <ef, ef'>2 ~ ~ <ef ef'>8 ef'4. ~ | % 48
  <ef, ef'>1 \pageBreak | % 49
  f'1 | \barNumberCheck #50
  df1 | % 51
  af2 ~ af8 af'4. | % 52
  ef1 | % 53
  f1 | % 54
  df1 | % 55
  af2 ~ af8 af'4. | % 56
  ef1 | % 57
  f,2 ~ f8 f'4. \break | % 58
  df2 ~ df8 df'4. | % 59
  af,2 ~ af8 af'4. | \barNumberCheck #60
  ef2 ~ ef8 ef4. | % 61
  f,2 ~ f8 f'4. | % 62
  df2 ~ df8 df4. | % 63
  af2 ~ af8 af'4. | % 64
  <ef bf'>4. ef8 ef'8 ef,8 bf'4 \break | % 65
  <f, f'>2 ~ <f f'>8 f'4. | % 66
  df1 | % 67
  af2 ~ af8 af'4. | % 68
  ef2 ~ ef8 ef4. | % 69
  f,2 ~ f8 f'4. | \barNumberCheck #70
  df2 ~ df8 df4. \break | % 71
  af2 ~ af8 af'4. | % 72
  ef2 ~ ef8 ef4. | % 73
  bf4. bf'8 ~ bf2 | % 74
  bf8 df8 bf4 c8 bf4. | % 75
  af,2 ~ af8 af'4. | % 76
  <ef bf'>4. <ef bf'>4 ef8 bf'4 | % 77
  bf,4. bf'8 ~ bf2 | % 78
  bf8 df8 bf4 c8 bf4. \break | % 79
  af,2 ~ af8 af'4. | \barNumberCheck #80
  <ef bf'>1 | % 81
  af,4. af'4. af4 | % 82
  af2 af2 | % 83
  f1 | % 84
  f,2. f'4 | % 85
  df1 | % 86
  df1 \break | % 87
  <ef, ef'>2 ef'2 | % 88
  ef1 | % 89
  af,4. af'4. af4 | \barNumberCheck #90
  af2 af2 | % 91
  <f, f'>4. f'4. f4 | % 92
  f4. f,4. f'4 | % 93
  df1 | % 94
  df2 ~ df8 df4. \break | % 95
  ef2 ~ ef8 ef4. ~ | % 96
  ef1 | % 97
  f1 | % 98
  df1 | % 99
  af2 ~ af8 af'4. | \barNumberCheck #100
  ef1 | % 101
  f1 | % 102
  df1 \pageBreak | % 103
  af2 ~ af8 af'4. | % 104
  ef1 | % 105
  bf4. bf'4. f4 | % 106
  bf,4. f'4. df'4 | % 107
  af,2 ~ af8 af'4. | % 108
  ef4. bf'8 bf8 ef,4 bf'8 | % 109
  bf,4. bf'4 bf4 bf8 | \barNumberCheck #110
  bf,4. bf'4. bf,4 \break | % 111
  af2 ~ af8 af'4. | % 112
  ef1 | % 113
  <af, af'>1 ~ ~ | % 114
  <af af'>1 | % 115
  <f f'>1 ~ ~ | % 116
  <f f'>1 | % 117
  <df df'>1 ~ ~ | % 118
  <df df'>1 | % 119
  <ef ef'>1 ~ ~ \break | \barNumberCheck #120
  <ef ef'>1 | % 121
  af4. af'4. af4 | % 122
  af4. af4. af4 | % 123
  <f, f'>4. f'4. f4 | % 124
  f4. f,4. f'4 | % 125
  df1 | % 126
  bf2 df2 | % 127
  ef2 ~ ef8 ef4. ~ \break | % 128
  <ef, ef'>1 | % 129
  f'1 | \barNumberCheck #130
  df1 | % 131
  af2 ~ af8 af'4. | % 132
  ef1 | % 133
  f1 | % 134
  df1 | % 135
  af2 ~ af8 af'4. \break | % 136
  ef1 | % 137
  f1 | % 138
  df'1 | % 139
  af1 | \barNumberCheck #140
  ef1 | % 141
  f1 | % 142
  df'1 | % 143
  af1 | % 144
  ef1 \bar "|."
}

\score {
  <<
  \new ChordNames \chordNames
  \new Staff {
    <<
      \new Voice = "first" { \voiceOne  \melodyOne }
      \addlyrics { \wordsStanzaOne }
      \new Voice = "second"{  \voiceTwo \melodyTwo  }
      \addlyrics { \wordsStanzaTwo }
      \new Voice { \breaks_Four_Measures}
    >>
  }
  >>
  %   \new Staff {
  %         \new Voice {  \melodyTwo  }
  %           \addlyrics { \wordsStanzaTwo }
  %     }

  %   \addlyrics { \wordsStanzaOne }
  % >>
  \layout {}
  \midi { }
}