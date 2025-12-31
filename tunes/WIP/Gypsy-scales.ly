\version "2.24.4"
\language "english"

\header {
  title = "Gypsy scales"
  tagline = ""
}

\paper {
  #(define fonts
     (set-global-fonts
       #:roman "Optima"
       #:sans "Optima"
       #:typewriter "Optima"))
}


% ============================================================
% Markup helpers (LilyPond 2.24.4-compatible)
%   - \sectionTitle: bigger than examples
%   - \exampleHeading: smaller
%   - \heardInHeading: same size as examples
%   - \hbullet: hanging bullets with \hspace + \wordwrap
% ============================================================

#(define-markup-command (sectionTitle layout props txt) (string?)
  (interpret-markup layout props
    (markup
      #:column (
        #:vspace 0.6
        #:fontsize 2 #:bold txt
        #:vspace 0.2))))

#(define-markup-command (exampleHeading layout props txt) (string?)
  (interpret-markup layout props
    (markup
      #:column (
        #:vspace 0.35
        #:fontsize 0 #:bold #:italic txt))))

#(define-markup-command (heardInHeading layout props txt) (string?)
  (interpret-markup layout props
    (markup
      #:column (
        #:vspace 0.15
        #:fontsize 0 #:italic txt))))

#(define-markup-command (hbullet layout props bullet txt) (string? string?)
  (interpret-markup layout props
    (markup
      #:line (
        #:hspace 0.5
        #:concat (bullet #:hspace 0.6)
        #:wordwrap-string txt)
      )))

#(define-markup-command (bulletItem layout props txt) (string?)
  (interpret-markup layout props
    (markup
      #:column (
        ;; the bullet line itself
        (#:line (
          #:hspace 1.2
          #:fontsize -1 "•"
          #:hspace 0.8
          #:wordwrap-string txt
        ))
        (#:vspace 0.35) ;; consistent space AFTER each bullet
      ))))





% ============================================================
% Intro text (wrapped + hanging bullets)
% ============================================================

\markup    \vspace #0.8


\markup {
  \column {
    \wordwrap {
      The term Gypsy scale refers to one of several musical scales named after their support of and association
      with Romani or Gypsy music.
    }
    \vspace #0.8

    \bulletItem
      "Double harmonic scale (major), the fifth mode of Hungarian minor, or Double Harmonic minor scale, also known as the Byzantine scale."

    \bulletItem
      "Hungarian minor scale, a minor scale with raised fourth and seventh degrees, also known as the Double Harmonic minor scale."

    \bulletItem
      "Phrygian dominant scale, also known as Freygish or Jewish scale; Spanish Gypsy or Spanish Phrygian scale."
  }
}







\markup \vspace #1.0

% ============================================================
% Section 1 — Double harmonic scale (major) / Byzantine scale
% ============================================================

\markup { \sectionTitle "1) Double harmonic scale (major) / Byzantine scale" }

\markup {
  \column {
    \override #'(line-width . 120)
    \wordwrap {
      Placeholder: explanation will go here (definition, aliases, degrees, step pattern, and a notated example).
    }
  }
}

\markup { \heardInHeading "Commonly heard in (placeholder): …" }
\markup { \exampleHeading "Example (placeholder)" }

\markup \vspace #0.4

\score {
  \new Staff {
    \clef treble
    \override Score.TimeSignature.stencil = ##f
    \time 1/4
    s4^\markup { \italic "TODO: add scale example here" }
  }
  \layout { }
}

\markup \vspace #1.0

% ============================================================
% Section 2 — Hungarian minor scale
% ============================================================

\markup { \sectionTitle "2) Hungarian minor scale" }

\markup {
  \column {
    \override #'(line-width . 120)
    \wordwrap {
      Placeholder: explanation will go here (definition, aliases, degrees, step pattern, and a notated example).
    }
  }
}

\markup { \heardInHeading "Commonly heard in (placeholder): …" }
\markup { \exampleHeading "Example (placeholder)" }

\markup \vspace #0.4

\score {
  \new Staff {
    \clef treble
    \override Score.TimeSignature.stencil = ##f
    \time 1/4
    s4^\markup { \italic "TODO: add scale example here" }
  }
  \layout { }
}

\markup \vspace #1.2

% ============================================================
% Section 3 — Phrygian Dominant (Spanish Gypsy / Freygish)
% ============================================================

\markup { \sectionTitle "3) Phrygian dominant scale (Spanish Gypsy / Freygish)" }

\markup {
  \column {
    \override #'(line-width . 120)
    \wordwrap {
      The Phrygian dominant scale (a.k.a. Phrygian ♮3) is the 5th mode of the harmonic minor scale
      (the 5th degree being the dominant). It is also called the harmonic dominant,
      altered Phrygian, dominant ♭2 ♭6 (in jazz), or Freygish.
      It resembles the Phrygian mode, but with a major third instead of a minor third.
    }
  }
}

\markup { \heardInHeading "Commonly heard in: Klezmer, Sephardic music, flamenco, and Romani/“gypsy jazz” colors." }

\markup \vspace #0.6

% --- Diagram: scale on C + degrees + steps (using lyrics) ---

cPhrygianDominantNotes = \relative c' {
  \clef treble
  \override Score.TimeSignature.stencil = ##f
  \time 8/4
  c4^\markup { \bold "Phrygian dominant scale on C" }
  df e f g af bf c
}

cPhrygianDominantDegrees = \lyricmode {
  "1" "♭2" "3" "4" "5" "♭6" "♭7" "1"
}

cPhrygianDominantSteps = \lyricmode {
  "H" "A2" "H" "W" "H" "W" "W" ""
}

\score {
  <<
    \new Staff {
      \new Voice = "scaleC" { \cPhrygianDominantNotes }
    }
    \new Lyrics \lyricsto "scaleC" { \cPhrygianDominantDegrees }
    \new Lyrics \lyricsto "scaleC" { \cPhrygianDominantSteps }
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricText.font-size = #-1
    }
  }
}

\markup \vspace #0.8

\markup {
  \column {
    \line { "Scale degrees (relative to major):  1 – ♭2 – 3 – 4 – 5 – ♭6 – ♭7 – 1" }
    \line { "Step pattern:  half – augmented second – half – whole – half – whole – whole" }
  }
}

\markup { \exampleHeading "Example" }

% --- Your violin exercise example: B Phrygian Dominant (desc) + B major arpeggio ---

global = {
  \time 2/4
  \clef treble
}

bPhrygianDominantDesc = \relative b'' {
  \global
  \key e \minor
  \mark \markup \box \tiny "B Phrygian Dominant (descending)"
  b8 a g fs | e ds c b |
  b8 a g fs | e ds c b |
  b2 \bar "||"
}

bMajorArpeggio = \relative b {
  \global
  \key e \minor
  \mark \markup \box \tiny "B major arpeggio (B–D#–F#)"
  b2 ds4 fs
  b4 ds fs
  b4 ds fs b4
  fs4 ds b
  fs4 ds b
  fs4 ds b
  \bar "|."
}

music = {
  \bPhrygianDominantDesc
  \break
  \bMajorArpeggio
}

\score {
  \new Staff { \music }
  \layout { }
  \midi { \tempo 4 = 88 }
}
