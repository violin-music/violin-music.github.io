\version "2.19.49"
\language "english"

#(set-global-staff-size 24)

\header{
	title = "Frère Jacques"
	composer = "Traditional"
	country = "France"
	genre = "Folk"
	tagline = ""
}

\include "../../common/common-header.ily"

frerejacques = \relative c' { \clef treble
	\key d \major
	\time 4/4 \repeat volta 2 {
	d4^\markup{\bold 1.} e fs d
	d4 e fs d
	fs4^\markup{\bold 2.} g a2
	fs4 g a2
	a8^\markup{\bold 3.} b a g fs4 d
	a'8 b a g fs4 d
	d4^\markup{\bold 4.} a d2
	d4 a d2 }
}

textF = \lyricmode {
	\set stanza = "(Fr.) "
	Frè -- re Jac -- ques, frè -- re Jac -- ques,
	dor -- mez vous, dor -- mez vous?
	Son -- nez les Ma -- ti -- nes, son -- nez les Ma -- ti -- nes:
	Ding dong ding, ding dong ding!
}

textD = \lyricmode {
	\set stanza = "(de) "
	Bru -- der Ja -- kob, Bru -- der Ja -- kob,
	schläfst du noch, schläfst du noch?
	Hörst du nicht die Glo -- cken, hörst du nicht die Glo -- cken:
	Ding dang dong, ding dang dong!
}

textE = \lyricmode {
	\set stanza = "(en) "
	Are you slee -- ping, are you slee -- ping,
	bro -- ther John, bro -- ther John?
	Mor -- ning bells are ring -- ing, mor -- ning bells are ring -- ing:
	Ding ding dong, ding ding dong!
}

textI = \lyricmode {
	\set stanza = "(it) "
	San Mar -- ti -- no, San Mar -- ti -- no,
	dor -- mi tu, dor -- mi tu?
	Sen -- ti le cam -- pa -- ne, sen -- ti le cam -- pa -- ne:
	Ding ding dong, ding ding dong!
}

textES = \lyricmode {
	\set stanza = "(Esp.) "
	Fray San -- tia -- go, Fray San -- tia -- go,
	¿duer -- me~us ted? ¿duer -- me~us ted?
	To -- can a mai -- ti -- nes, to -- can a mai -- ti -- nes:
	¡Din dan don, din dan don!
}

\score {
  \new Staff {  \frerejacques }
  \addlyrics  { \textF }
  \addlyrics  { \textD }
  \addlyrics  { \textE }
  \addlyrics  { \textI }
  \addlyrics  { \textES }
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
}

\paper { 
    indent = 0
	left-margin=3\cm
	right-margin=3\cm
	 %linewidth = 123\mm
	bottom-margin=10\cm
	top-margin=4\cm
	system-count=4
	ragged-last-bottom=##f
}