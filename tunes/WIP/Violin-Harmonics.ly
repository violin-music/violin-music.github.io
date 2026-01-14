\version "2.24.4"
\language "english"
\include "../../tunes/common/markups.ly"


\header {
  title = "Harmonics on the Violin"  
  composer = "Marc Mouries"
  tagline = ""
}
\paper {
  indent = 10
  %ragged-right = ##f
  %ragged-last = ##f
}

\paper {
  #(define fonts
     (set-global-fonts
       #:roman      "Optima"
       #:sans       "Optima"
       #:typewriter "Optima"))
}

% =========================
% Global (no meter, no barlines)
% =========================
global = {
  \cadenzaOn
}


% =========================
% Function: harmonic note + tiny parenthesized sounding pitch above
%
% Usage:
%   \harmWithPitch <TOUCH-NOTE-MUSIC> <SOUNDING-NOTE-MUSIC>
%
% Example:
%   \harmWithPitch g'\harmonic4 \parenthesize g'4
% =========================
harmWithPitch =
#(define-music-function (parser location touchMusic soundingMusic)
   (ly:music? ly:music?)
#{
  \override Staff.NoteColumn.ignore-collision = ##t
  <<
    {
      \oneVoice
      % Diamond-ish harmonic noteheads for the touched note(s)
      \override NoteHead.style = #'harmonic-mixed
      $touchMusic
      \revert NoteHead.style
    }
    \\
    {
      \oneVoice
      \tiny
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      \override Parentheses.font-size = #0
      $soundingMusic
      \revert Stem.stencil
      \revert Flag.stencil
      \revert Parentheses.font-size
    }
  >>
  \revert Staff.NoteColumn.ignore-collision
#})


\markup \vspace #1
\markup { \sectionHeading #1 "Harmonics" }          % main section
\markup \paragraph 
"Harmonics are flute-like sounds produced on stringed by lightly touching 
a string at specific points (like the halfway or one-third mark) rather 
than pressing it down." 
\markup \paragraph  
"There are two types of harmonics: natural Harmonics and artificial Harmonics"

\markup { \sectionHeading #2 "Natural Harmonics" }  % sub heading
\markup \paragraph  
"Natural Harmonics are the ones that are produced without pressing down on the 
string. The most resonant and the easiest harmonic to play is to play an open 
string and to lightly touch its midpoint.  This produces a higher, ethereal 
harmonic with a pitch an octave higher." 

\markup \line { 
  "Example on the A string: " 
  \writeMusic { { a'\flageolet } } 
  " sounds like " \writeMusic { { a'' } } }


% =========================
% Natural harmonic “ladder” per string
% (2nd partial = octave, 3rd = 12th, 4th = 2 oct, 5th, 6th)
% =========================

natGString =  {
  \global
  \clef treble

  % Label
  g4^\markup { \bold "G string" }

  % Touch point (diamond) + sounding (tiny parenthesized)
  \harmWithPitch g'  \harmonic4  \parenthesize g'  4     % 2nd partial (octave)
  \harmWithPitch d'' \harmonic4  \parenthesize d'' 4     % 3rd partial (12th)
  \harmWithPitch g'' \harmonic4  \parenthesize g'' 4     % 4th partial (2 oct)
  \harmWithPitch b'' \harmonic4  \parenthesize b'' 4     % 5th partial
  \harmWithPitch d'''\harmonic4  \parenthesize d'''4     % 6th partial
}

natDString =  {
  \global
  \clef treble
  \key d \major

  d4^\markup { \bold "D string" }

  \harmWithPitch d'\harmonic4   \parenthesize d'4      % 2nd partial
  \harmWithPitch a'\harmonic4   \parenthesize a'4      % 3rd partial
  \harmWithPitch d''\harmonic4  \parenthesize d''4     % 4th partial
  \harmWithPitch fs''\harmonic4 \parenthesize fs''4    % 5th partial
  \harmWithPitch a''\harmonic4  \parenthesize a''4     % 6th partial
}

natAString =  {
  \global

  a4^\markup { \bold "A string" }

  \harmWithPitch a'\harmonic4    \parenthesize a'4     % 2nd partial
  \harmWithPitch e''\harmonic4   \parenthesize e''4    % 3rd partial
  \harmWithPitch a''\harmonic4   \parenthesize a''4    % 4th partial
  \harmWithPitch cs'''\harmonic4 \parenthesize cs'''4  % 5th partial
  \harmWithPitch e'''\harmonic4  \parenthesize e'''4   % 6th partial
}

natEString =  {
  \global
  \clef treble

  e4^\markup { \bold "E string" }

  \harmWithPitch e''\harmonic4    \parenthesize e''4     % 2nd partial (E6)
  \harmWithPitch b''\harmonic4    \parenthesize b''4     % 3rd partial (B6)
  \harmWithPitch e'''\harmonic4   \parenthesize e'''4    % 4th partial (E7)
  \harmWithPitch gs'''\harmonic4  \parenthesize gs'''4   % 5th partial (G#7)
  \harmWithPitch b'''\harmonic4   \parenthesize b'''4    % 6th partial (B7)
}

% =========================
% Article text + 4 separate scores
% =========================


\markup \paragraph 
"Each diamond note shows the touch point (left-hand contact). The tiny parenthesized note above shows the sounding pitch. 
Touch feather-light, then use faster bow speed and lighter bow pressure to make the harmonic speak."

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override BarLine.stencil = ##f
    \override SpanBar.stencil = ##f
    \omit Score.BarNumber
  } { \natGString }
  \layout { }
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override BarLine.stencil = ##f
    \override SpanBar.stencil = ##f
    \omit Score.BarNumber
  } { \natDString }
  \layout { }
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override BarLine.stencil = ##f
    \override SpanBar.stencil = ##f
    \omit Score.BarNumber
  } { \natAString }
  \layout { }
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override BarLine.stencil = ##f
    \override SpanBar.stencil = ##f
    \omit Score.BarNumber
  } { \natEString }
  \layout { }
}



\markup \large \bold "A string"
%   => the note with the normal note head indicates the stopped position
%   => the note with the diamond note head indicates the harmonic position. 
%   => the small note between parenthesis indicates the sounding pitch

\relative c'' { 
  \override Staff.NoteColumn.ignore-collision = ##t 
  \override NoteHead.style = #'harmonic-mixed 
  << { 
    \oneVoice 
       <a_0 e'_2 \harmonic>4 % 
       <a_0 d_1 \harmonic>4 
     } 
     \\
     { %
       \oneVoice 
       \override Stem.stencil = ##f 
       \override Flag.stencil = ##f 
       \tiny 
       <\parenthesize e''> 
       <\parenthesize e> } 
>> }


% ------------------------------------------------------------
% Function: harmonic event + tiny parenthesized sounding event
%
% Usage:
%   \harmWithPitch <HARMONIC_EVENT> <SOUNDING_EVENT>
%
% Example:
%   \harmWithPitch <a e'\harmonic>4 <\parenthesize e''>4
%   => the note with the normal note head indicates the stopped position
%   => the note with the diamond note head indicates the harmonic position. 
%   => the small note between parenthesis indicates the sounding pitch
% ------------------------------------------------------------
harmWithPitch =
#(define-music-function (parser location harmEvent soundEvent)
   (ly:music? ly:music?)
#{
  \override Staff.NoteColumn.ignore-collision = ##t
  \override NoteHead.style = #'harmonic-mixed
  <<
    {
      \oneVoice
      $harmEvent
    }
    \\
    {
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      \tiny
      \override Parentheses.font-size = #0
      $soundEvent
      \revert Parentheses.font-size
      \revert Flag.stencil
      \revert Stem.stencil
    }
  >>
  \revert NoteHead.style
  \revert Staff.NoteColumn.ignore-collision
#})

% ============================================================
% 4 separate scores — one per violin string
% (These are “reference ladders” you can replace with your
% preferred finger/position sequence later.)
% ============================================================

% \markup \large \bold "G string"
% \score {
%   \new Staff {
%      {
%       \global
%       % Natural harmonic ladder on G string
%       % (touch pitch shown as harmonic; sounding in parentheses)
%       \harmWithPitch <g,\harmonic>4   <\parenthesize g'>4
%       \harmWithPitch <d\harmonic>4    <\parenthesize d''>4
%       \harmWithPitch <g\harmonic>4    <\parenthesize g''>4
%       \harmWithPitch <b\harmonic>4    <\parenthesize b''>4
%       \harmWithPitch <d'\harmonic>4   <\parenthesize d'''>4
%     }
%   }
%   \layout { }
% }
% 
% \markup \large \bold "D string"
% \score {
%   \new Staff {
%      {
%       \global
%       \key d \major
%       \harmWithPitch <d,\harmonic>4   <\parenthesize d'>4
%       \harmWithPitch <a\harmonic>4    <\parenthesize a'>4
%       \harmWithPitch <d\harmonic>4    <\parenthesize d''>4
%       \harmWithPitch <fs\harmonic>4   <\parenthesize fs''>4
%       \harmWithPitch <a\harmonic>4    <\parenthesize a''>4
%     }
%   }
%   \layout { }
% }

\markup \large \bold "A string"
\score {
  \new Staff {
     {
      \global
      \key a \major
      \harmWithPitch <a\harmonic>4     <\parenthesize a'>4
      \harmWithPitch <e\harmonic>4      <\parenthesize e''>4
      \harmWithPitch <a\harmonic>4      <\parenthesize a''>4
      \harmWithPitch <cs'\harmonic>4    <\parenthesize cs'''>4
      \harmWithPitch <e'\harmonic>4     <\parenthesize e'''>4
    }
  }
  \layout { }
}

% \markup \large \bold "E string"
% \score {
%   \new Staff {
%      {
%       \global
%       \harmWithPitch <e\harmonic>4      <\parenthesize e''>4
%       \harmWithPitch <b\harmonic>4      <\parenthesize b''>4
%       \harmWithPitch <e'\harmonic>4     <\parenthesize e'''>4
%       \harmWithPitch <gs'\harmonic>4    <\parenthesize gs'''>4
%       \harmWithPitch <b'\harmonic>4     <\parenthesize b'''>4
%     }
%   }
%   \layout { }
% }
%                 

\markup { \sectionHeading #2 "Artificial Harmonics" }  % sub heading
