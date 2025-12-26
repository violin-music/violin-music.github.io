\version "2.24.0"
%---------------------------------
%\include"./   "_/AccordsJazzDefs.ly"
%----------------------------------
\include "../../common/common-header.ily"

\header {
  title = "All of Me"
  composer = "Gerald Marks and Seymour Simons"
  style = "jazz standard"
  country = "USA"
}

muA = \relative c' {
  \set Staff.midiInstrument = "flute"
  \key c \major
  \bar ".|:-|"
  \repeat "volta" 2 {
    c'4 g8 e ~e2
    ~e2 \tuplet 3/2 { c'4 d c }
    b4 gis8  e ~ e2 ~
    e1			\break
    a4. g8 e2 ~
    e4 dis e8 bes' a4
    g2 f2 ~
    f1			\break
    e4. ees8 d2 ~
    d2  e8 gis c4
    d2 c2 ~
    c1			\break
    b4. bes8 a2 ~
    a2 a8 d b4
    a1
    b1	\bar "||"	\break

    c4 g8 e ~e2 ~
    e2 \tuplet 3/2 { c'4 d c }
    b4 gis8  e ~e2 ~
    e1			\break
    a4. g8 e2 ~
    e4 dis e8 bes' a4
    g2 f2 ~
    f1			\break
  }

  \alternative {
    {
      d'2 c4 b
      d2. c4
      b2 e,4  g4
      b2. a4			\break
      c2 a4 c
      e2 e2
      c1 ~
      c1			\break
    }
    {
      d2 c4 b
      d2. c4
      b2 e,4 g4
      b2. a4			\break
      \bar ".|:-|"
      c2 a4 c
      e2 e2
      c1
      ~c1
      \bar ":|."
    }
  }
}

chA = \chordmode {
  \repeat "volta" 2 {
    c1:maj	c1:maj		e:7		e:7		|
    a:7		a:7		d:m7		d:m7 		|
    e:7		e:7		a:m7		a:m7		|
    d:7		d:7		d:m7		g:7		|
    c1:maj		c1:maj		e:7		e:7		|
    a:7		a:7		d:m7		d:m7	 	|
  }
  \alternative {
    {
      f1		f:m		c2:maj	e:m7	a1:7		|
      d:m7		g:7	  	c2:6	ees:dim	d2:m7	g:7 	|
    }
    {
      f1		f:m		c2:maj	e:m7	a1:7		|
      d:m7		g:7	 	c1:6 		c1:6		|
    }
  }
}

accords = {
%  \set chordRootNamer = #chordNamer	% substitution du nomage des accords
%  \set chordNameExceptions = #chJazz	% substitution de l'affichage des extensions
  \set chordChanges = ##t			% évite la répétition des accords
  \chA
}

musique = \relative c' {
  \muA
}

paroles = \lyricmode {
  \repeat "volta" 2 {
    All of me
    Why not take all of me
    Can't you see
    I'm no good with -- out you

    Take my lips
    I want to lose them
    Take my arms
    I ne -- ver use them

    Your Good -- bye
    Left me whith eyes that cry
    How can I go on dear with -- out you
  }
  \alternative {
    {
      You took the part
      That once was my heart
      So why not take all of me
    }
    {
      You took the best
      So why not take the rest
      Ba -- by take all of me
    }
  }
}

\score {
  <<
    \new ChordNames
    \accords

    \override Score.Clef.break-visibility = #'#(#f #f #f)	 % une seule clef
    \override Score.KeySignature.break-visibility = #'#(#f #f #f)	% une seule signature
    \override Score.SystemStartBar.collapse-height = #1	 % barre en debut de portée

    \new Staff
    \with {\override VerticalAxisGroup.minimum-Y-extent = #'(0 . 0) }
    \new Voice = chant { \musique }

    \override Score.LyricText.font-name = #"Comic sans MS"
    %		\override Score.LyricText.font-size = #-1

    \new Lyrics \with { \override VerticalAxisGroup.minimum-Y-extent = #'(0 . 0) }
    \lyricsto chant {\paroles}
  >>
  \layout {	}
}
