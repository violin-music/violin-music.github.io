\version "2.24.4"
\language "english"

\header {
  title = "Violin Harmonics"
  subtitle = "Natural Harmonics — touch point + sounding pitch"
  tagline = ""
}

\paper {
  indent = 0
  ragged-right = ##f
  ragged-last = ##f
}

% =========================
% Simple markup helper
% =========================
#(define-markup-command (para layout props txt) (string?)
  (interpret-markup layout props
    (markup #:wordwrap-string txt)))

% =========================
% Global (no meter, no barlines)
% =========================
global = {
  \cadenzaOn
  \tempo 4 = 72
}

% =========================
% Function: harmonic note + tiny parenthesized sounding pitch above
%
% Usage:
%   \harmWithSounding <TOUCH-NOTE-MUSIC> <SOUNDING-NOTE-MUSIC>
%
% Example:
%   \harmWithSounding g'\harmonic4 \parenthesize g'4
% =========================
harmWithSounding =
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
  \harmWithSounding g'\harmonic4   \parenthesize g'4      % 2nd partial (octave)
  \harmWithSounding d''\harmonic4  \parenthesize d''4     % 3rd partial (12th)
  \harmWithSounding g''\harmonic4  \parenthesize g''4     % 4th partial (2 oct)
  \harmWithSounding b''\harmonic4  \parenthesize b''4     % 5th partial
  \harmWithSounding d'''\harmonic4 \parenthesize d'''4    % 6th partial
}

natDString =  {
  \global
  \clef treble
  \key d \major

  d4^\markup { \bold "D string" }

  \harmWithSounding d'\harmonic4   \parenthesize d'4      % 2nd partial
  \harmWithSounding a'\harmonic4   \parenthesize a'4      % 3rd partial
  \harmWithSounding d''\harmonic4  \parenthesize d''4     % 4th partial
  \harmWithSounding fs''\harmonic4 \parenthesize fs''4    % 5th partial
  \harmWithSounding a''\harmonic4  \parenthesize a''4     % 6th partial
}

natAString =  {
  \global
  \clef treble
  \key a \major

  a4^\markup { \bold "A string" }

  \harmWithSounding a'\harmonic4    \parenthesize a'4     % 2nd partial
  \harmWithSounding e''\harmonic4   \parenthesize e''4    % 3rd partial
  \harmWithSounding a''\harmonic4   \parenthesize a''4    % 4th partial
  \harmWithSounding cs'''\harmonic4 \parenthesize cs'''4  % 5th partial
  \harmWithSounding e'''\harmonic4  \parenthesize e'''4   % 6th partial
}

natEString =  {
  \global
  \clef treble

  e4^\markup { \bold "E string" }

  \harmWithSounding e''\harmonic4    \parenthesize e''4     % 2nd partial (E6)
  \harmWithSounding b''\harmonic4    \parenthesize b''4     % 3rd partial (B6)
  \harmWithSounding e'''\harmonic4   \parenthesize e'''4    % 4th partial (E7)
  \harmWithSounding gs'''\harmonic4  \parenthesize gs'''4   % 5th partial (G#7)
  \harmWithSounding b'''\harmonic4   \parenthesize b'''4    % 6th partial (B7)
}

% =========================
% Article text + 4 separate scores
% =========================
\markup \large \bold "Natural Harmonics"
\markup \para
"Each diamond note shows the touch point (left-hand contact). The tiny parenthesized note above shows the sounding pitch. \
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

\relative c'' { 
  \override Staff.NoteColumn.ignore-collision = ##t 
  \override NoteHead.style = #'harmonic-mixed 
  << { \oneVoice 
       <a_0 e'_2 \harmonic>4 
       <a_0 d_1 \harmonic>4 
     } 
     \\
     { %
       \oneVoice 
       \tiny \override Stem.stencil = ##f 
       \override Flag.stencil = ##f 
       <\parenthesize e''> 
       <\parenthesize e> } 
>> }


% ------------------------------------------------------------
% Function: harmonic event + tiny parenthesized sounding event
%
% Usage:
%   \harmWithSound <HARMONIC_EVENT> <SOUNDING_EVENT>
%
% Example:
%   \harmWithSound <a e'\harmonic>4 <\parenthesize e''>4
%   \harmWithSound <a_0 d_1\harmonic>4 <\parenthesize a'>4
% ------------------------------------------------------------
harmWithSound =
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
      \tiny
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      \override Parentheses.font-size = #0
      % optional: make the small note sit a touch higher
      \override NoteHead.extra-offset = #'(0 . 1.2)
      $soundEvent
      \revert NoteHead.extra-offset
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

\markup \large \bold "G string"
\score {
  \new Staff {
    \relative c'' {
      \global
      % Natural harmonic ladder on G string
      % (touch pitch shown as harmonic; sounding in parentheses)
      \harmWithSound <g,\harmonic>4   <\parenthesize g'>4
      \harmWithSound <d\harmonic>4    <\parenthesize d''>4
      \harmWithSound <g\harmonic>4    <\parenthesize g''>4
      \harmWithSound <b\harmonic>4    <\parenthesize b''>4
      \harmWithSound <d'\harmonic>4   <\parenthesize d'''>4
    }
  }
  \layout { }
}

\markup \large \bold "D string"
\score {
  \new Staff {
    \relative c'' {
      \global
      \key d \major
      \harmWithSound <d,\harmonic>4   <\parenthesize d'>4
      \harmWithSound <a\harmonic>4    <\parenthesize a'>4
      \harmWithSound <d\harmonic>4    <\parenthesize d''>4
      \harmWithSound <fs\harmonic>4   <\parenthesize fs''>4
      \harmWithSound <a\harmonic>4    <\parenthesize a''>4
    }
  }
  \layout { }
}

\markup \large \bold "A string"
\score {
  \new Staff {
    \relative c'' {
      \global
      \key a \major
      \harmWithSound <a,\harmonic>4     <\parenthesize a'>4
      \harmWithSound <e\harmonic>4      <\parenthesize e''>4
      \harmWithSound <a\harmonic>4      <\parenthesize a''>4
      \harmWithSound <cs'\harmonic>4    <\parenthesize cs'''>4
      \harmWithSound <e'\harmonic>4     <\parenthesize e'''>4
    }
  }
  \layout { }
}

\markup \large \bold "E string"
\score {
  \new Staff {
    \relative c'' {
      \global
      \harmWithSound <e\harmonic>4      <\parenthesize e''>4
      \harmWithSound <b\harmonic>4      <\parenthesize b''>4
      \harmWithSound <e'\harmonic>4     <\parenthesize e'''>4
      \harmWithSound <gs'\harmonic>4    <\parenthesize gs'''>4
      \harmWithSound <b'\harmonic>4     <\parenthesize b'''>4
    }
  }
  \layout { }
}
                                                                                                                   