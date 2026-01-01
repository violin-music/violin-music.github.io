% file: include-score-if-standalone_test_tune.ly
\version "2.24.4"

\include "include-score-if-standalone.ily"

\header {
  title = "Tune in Original Key"
}

% Set to true if you want to see filename matching in the console
#(define debug #t)


myMusic = \relative c' {
   \key a \minor
   | a4 b c d
   | e2 e
   | f4 e d b
   | a1 |
 }

myChords = \chordmode { a2:m e:m }
myLyrics = \lyricmode { This is a test. }

% This renders only when you compile tune.ly directly

% --- OPTION A: Just the melody (no named arguments) ---
\scoreIfStandalone \myMusic

% --- OPTION B: Only one named argument ---
\scoreIfStandalone 
  #`((unit . "4")  % Simple string for duration
     (bpm  . 80))   % 80 dotted quarters per minute
  \myMusic

% --- OPTION C: Using "Named Arguments" in any order ---
\scoreIfStandalone 
  #'((chords . #myChords) 
     (lyrics . #myLyrics) 
     (tempo  . #{\tempo 4=120 #}))
  \myMusic

