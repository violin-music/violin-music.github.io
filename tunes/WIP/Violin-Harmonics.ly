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
  ragged-right = ##f
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
% Function: Artificial harmonic notation
%
% Usage:
%   \artificialHarmWithPitch { a'4_0 d''_1 a'' }
%     First note  = stopped position (normal notehead)
%     Second note = touch point (becomes diamond notehead)
%     Third note  = sounding pitch (tiny, parenthesized)
% =========================
artificialHarmWithPitch =
#(define-music-function (notes) (ly:music?)
   (let* ((note-list (ly:music-property notes 'elements))
          (stopNote (car note-list))
          (touchNote (cadr note-list))
          (pitchNote (caddr note-list))
          ;; Create a deep copy of touchNote and apply harmonic style
          (touch-copy (ly:music-deep-copy touchNote)))
     ;; Apply harmonic style to the touch note copy
     (ly:music-set-property! touch-copy 'tweaks
       (acons 'style 'harmonic (ly:music-property touch-copy 'tweaks '())))
     ;; Create a chord from stopNote and touch-copy
     (let ((chord (make-music 'EventChord
                    'elements (list stopNote touch-copy)
                    'origin (ly:music-property stopNote 'origin))))
       #{
         \override Staff.NoteColumn.ignore-collision = ##t
         \override NoteHead.style = #'harmonic-mixed
         <<
           { \oneVoice $chord }
           \\
           {
             \oneVoice
             \override Stem.stencil = ##f
             \override Flag.stencil = ##f
             \tiny
             \override Parentheses.font-size = #0
             \parenthesize $pitchNote
             \revert Parentheses.font-size
             \revert Stem.stencil
             \revert Flag.stencil
           }
         >>
         \revert NoteHead.style
         \revert Staff.NoteColumn.ignore-collision
       #})))

% =========================
% Function: Natural harmonic notation (2 arguments)
%
% For natural harmonics where you only touch an open string.
%
% Arguments:
%   touchNote - diamond notehead: where to lightly touch the open string
%   pitchNote - the resulting sounding pitch (automatically parenthesized)
%
% Usage:
%   \naturalHarmonic g'4 g'
% =========================
naturalHarmonic =
#(define-music-function (touchNote pitchNote)
   (ly:music? ly:music?)
#{
  \override Staff.NoteColumn.ignore-collision = ##t
  <<
    {
      \oneVoice
      \override NoteHead.style = #'harmonic
      $touchNote
      \revert NoteHead.style
    }
    \\
    {
      \oneVoice
      \tiny
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      \override Parentheses.font-size = #0
      \parenthesize $pitchNote
      \revert Stem.stencil
      \revert Flag.stencil
      \revert Parentheses.font-size
    }
  >>
  \revert Staff.NoteColumn.ignore-collision
#})




\markup \vspace #1
\markup { \sectionHeading #1 "Harmonics" }          % main section

\markuplist {
  \paragraph {
  Harmonics are flute-like sounds produced on stringed by lightly touching a string at specific points (like the halfway or one-third mark) rather than pressing it down.}}

\markuplist {
  \paragraph {
  "There are two types of harmonics: natural Harmonics and artificial Harmonics"}}


\markup { \sectionHeading #2 "Natural Harmonics" }  % sub heading
\markuplist {
  \paragraph {
  Natural Harmonics are the ones that are produced without pressing down on the string. The most resonant and the easiest harmonic to play is to play an open string and to lightly touch its midpoint.  This produces a higher, ethereal harmonic with a pitch an octave higher.}}

\markup \line { 
  "Example on the A string: "
  \writeMusic { { a'\flageolet } } 
  " sounds like " \writeMusic { { a'' } } }


\markup \vspace #.8

\markup {
  \column {
    \wordwrap {
      "Other harmonics occur at the lightly touched minor and major third, fourth, fifth,  and major sixth."
    }

    \bulletItem 
    "the note with the normal note head indicates the stopped position"

    \bulletItem 
    "the note with the diamond note head indicates the harmonic position."

    \bulletItem 
    "the small note between parenthesis indicates the sounding pitch"
  }
}

\markup  {
"The easiest natural harmonics to play are the major third, the fourth, the fifth and the octave."}

\markup \vspace #.8

\markuplist { 
  \paragraph \smaller \italic {
    \bold { Note: } Each diamond note shows the touch point (left-hand contact).
    The tiny parenthesized note above shows the sounding pitch. Touch feather-light,
    then use faster bow speed and lighter bow pressure to make the harmonic speak.
  }
}

\markup \vspace #.8


\score {
  \new Staff
  \with {
    instrumentName =\markup \bold "E string"
    \remove "Time_signature_engraver"
  }
  
  {
    \cadenzaOn
      r
      \bar "|"    
  }
\layout { indent = 20}
}

    
\markup \vspace #.8
   
% --------------------------------|
% On the A string (A4), the       |
% natural harmonics available are:|
% --------------------------------|
%                                 |
%  INTERVAL    |  STOP  | PITCH   |
% -------------|--------|---------|
%  minor 3rd   |   c    |  E7     | 
%  major 3rd   |   c#   |  C#7    | 
%  fourth      |   d    |  A6     | 
%  fifth       |   e    |  E6     | 
%  major sixth |   f#   |  C#7    |  
%
% Using the artificialHarmWithPitch function with 3 arguments:
%   stopNote (normal) | touchNote (diamond) | pitchNote (auto-parenthesized)

\score {
  \new Staff
      \with {
        instrumentName =\markup \bold "A string"
        \remove "Time_signature_engraver"
      }  
  {
    \cadenzaOn
      \artificialHarmWithPitch { a'4_0  cs''_2   cs'''' }
      \artificialHarmWithPitch { a'4_0  d'' _1   a'' }
      \artificialHarmWithPitch { a'4_0  e'' _2   e''' }
      \artificialHarmWithPitch { a'4_0  fs''_3   cs'''' }
      \bar "|"    
  }
\layout { indent = 20}
}


\score {
  \new Staff
  \with {
    instrumentName =\markup \bold "D string"
    \remove "Time_signature_engraver"
  }
  
  {
    \cadenzaOn
      r
      \bar "|"    
  }
\layout { indent = 20}
}

\score {
  \new Staff
  \with {
    instrumentName =\markup \bold "G string"
    \remove "Time_signature_engraver"
  }
  
  {
    \cadenzaOn
      r
      \bar "|"    
  }
\layout { indent = 20}
}






{ 
  \override Staff.NoteColumn.ignore-collision = ##t 
  \override NoteHead.style = #'harmonic-mixed 
  << { 
    \oneVoice 
       <a'_0 d'' _1 \harmonic>4 %
       <a'_0 e'' _2 \harmonic>4 %
       <a'_0 fs''_3 \harmonic>4 %
     } 
     \\
     { %
       \oneVoice 
       \override Stem.stencil = ##f 
       \override Flag.stencil = ##f 
      \tiny
      \override Parentheses.font-size = #0
      <\parenthesize a''>
       <\parenthesize e'''>
       <\parenthesize cs''''>
     } 
>> }






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
  \naturalHarmonic g'4   g''      % 2nd partial (octave)
  \naturalHarmonic d''4  d'''     % 3rd partial (12th)
  \naturalHarmonic g''4  g'''     % 4th partial (2 oct)
  \naturalHarmonic b''4  b'''     % 5th partial
  \naturalHarmonic d'''4 d''''    % 6th partial
}

natDString =  {
  \global
  \clef treble
  \key d \major

  d4^\markup { \bold "D string" }

  \naturalHarmonic d'4   d''     % 2nd partial
  \naturalHarmonic a'4   a''     % 3rd partial
  \naturalHarmonic d''4  d'''    % 4th partial
  \naturalHarmonic fs''4 fs'''   % 5th partial
  \naturalHarmonic a''4  a'''    % 6th partial
}

natAString =  {
  \global

  a4^\markup { \bold "A string" }

  \naturalHarmonic a'4    a''     % 2nd partial
  \naturalHarmonic e''4   e'''    % 3rd partial
  \naturalHarmonic a''4   a'''    % 4th partial
  \naturalHarmonic cs'''4 cs''''  % 5th partial
  \naturalHarmonic e'''4  e''''   % 6th partial
}

natEString =  {
  \global
  \clef treble

  e4^\markup { \bold "E string" }

  \naturalHarmonic e''4   e'''    % 2nd partial (E6)
  \naturalHarmonic b''4   b'''    % 3rd partial (B6)
  \naturalHarmonic e'''4  e''''   % 4th partial (E7)
  \naturalHarmonic gs'''4 gs''''  % 5th partial (G#7)
  \naturalHarmonic b'''4  b''''   % 6th partial (B7)
}

% =========================
% Article text + 4 separate scores
% =========================




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
