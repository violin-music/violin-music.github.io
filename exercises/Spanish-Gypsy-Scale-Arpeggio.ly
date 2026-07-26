\version "2.26.0"
\language "english"

\paper {
  page-breaking = #ly:one-page-breaking
}

\header {
  title = "Spanish Gypsy Scale & Arpeggio"
  subtitle = "Complete 2-Octave Ascending & Descending Exercise"
  tagline = ##f
}

% Harmonies follow the scale's tonic: bar 1 is B C D# E (B Phrygian dominant),
% so the B chord sits under the tonic bar and C is the flat-II answer.
harmonies = \chordmode {
  % Section 1: The Scale (Ascending)
  b1 | c1 | b1 | c1

  % Section 1: The Scale (Descending)
  b1 | c1 | b1 | c1
  
  % Section 2: The Arpeggio stays firmly on B major
  b1 | b1 | b1 | b1 |
}

melody = {
  \clef treble
  \time 4/4
  
  % SECTION 1: 2-Octave Scale (Ascending & Descending)
  \mark \markup { \box "2-Octave Scale" }
  b4   c'  ds' e'  |  % Ascending Octave 1 begins
  fs'  g'  a'  b'  |
  c''  ds'' e'' fs'' |  % Ascending Octave 2 begins
  g''  a'' b''2    |  % Top peak note
  
  % Turnaround - Scale Descending
  b''4 a'' g'' fs'' |  % Descending Octave 2 begins
  e''  ds'' c'' b'  |
  a'   g'  fs' e'  |  % Descending Octave 1 begins
  ds'  c'  b2       |  % Resolves back to the starting root
  \bar "||"
  \break
  
  % SECTION 2: 2-Octave Arpeggio (Ascending & Descending)
  \mark \markup { \box "2-Octave Arpeggio" }
  b4   ds' fs' b'   |  % Ascending Octave 1
  ds'' fs'' b'' a'' |  % Ascending Octave 2 + starts descent
  fs'' ds'' b'  a'  |  % Descending Octave 2
  fs'  ds' b2       |  % Resolves home on low B
  \bar "|."
}

\score {
  <<
    % Chord Names Display
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    
    % Standard Notation Staff
    \new Staff {
      \melody
    }
  >>
  \layout { 
    indent = 0
  }
  \midi { }
}
