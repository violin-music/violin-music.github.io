\version "2.19.53"
\language "english"

\header {
  title = "The Scotman"
  subtitle = "Commonly known as \"The Drunk Scotsman\""
  composer = "Mike Cross"
  origin = "Mid-1970s, USA (North Carolina)"

}

global = {
  \time 4/4
  \key d \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global


}

melody = \relative c'' {
  \global
  \partial 16  a16
  fs8 fs    fs8. fs16 g8 g8 g8. g16
  a8 b a8. g16 fs4. r16 a16

  fs8 fs    fs8. fs16 g8 g8 g8. g16
  a8 b a8. g16 fs4. r16 a16


  fs8 fs    fs8. fs16 g8 g8 g8. g16
  a8 b a8. g16 fs4. r16 fs16
  b8 b b8. a16 b8 cs d8. b16

  a8. b16 a8  fs e4.  r16 a16
  d,8 d e e fs fs g g
  a8. fs16 g8 e8 d2

  b'8 b b8. a16 b cs b cs d8. b16
  a8. b16 a8  fs e4.  r16 a16
  d,8 d e e fs fs g g
  a8. fs16 g8 e8 d2




}

words = \lyricmode {
  Well a Scots -- man clad in kilt left a bar one ev' -- ning fair
  And one could tell by how he walked that he'd drunk more than his share
  He fumbled round until he could no longer keep his feet
  Then he stumbled off into the grass to sleep beside the street
  Ring ding diddle diddle I de oh
  ring di diddly I oh
  He stumbled off into the grass to sleep beside the street

  About that time two young and pretty girls just happened by
  And one says to the other with a twinkle in her eye
  See young sleeping Scotsman so strong and handsome built
  I wonder if it's true what they don't wear beneath the kilt
  Ring ding diddle diddle I de oh ring di diddly I oh
  I wonder if it's true what they don't wear beneath the kilt

  They crept up on that sleeping Scotsman quiet as could be
  Lifted up his kilt about an inch so they could see
  And there behold, for them to view, beneath his Scottish skirt
  Was nothing more than God had graced him with upon his birth
  Ring ding diddle diddle I de oh ring di diddly I oh
  Was nothing more than God had graced him with upon his birth

  They marveled for a moment, then one said 'we must be gone'
  'Let's leave a present for our friend, before we move along'
  As a gift they left a blue silk ribbon, tied into a bow
  Around the bonnie star, the Scots kilt did lift and show
  Ring ding diddle diddle I de oh ring di diddly I oh
  Around the bonnie star, the Scots kilt did lift and show

  Now the Scotsman woke to nature's call and stumbled towards a tree
  Behind a bush, he lift his kilt and gawks at what he sees
  And in a startled voice he says to what's before his eyes.
  'O lad I don't know where you been but I see you won first prize'
  Ring ding diddle diddle I de oh ring di diddly I oh
  O lad I don't know where you been but I see you won first prize!

}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi {
    \tempo 4 = 200
  }
}
