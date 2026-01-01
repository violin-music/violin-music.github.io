% file: include-score-if-standalone_test_tune.ly
\version "2.24.4"

\include "include-score-if-standalone.ily"

\header {
  title = "Tune in Original Key"
}

% Set to true if you want to see filename matching in the console
#(define debug #t)

originalKey = a
originalMode = #minor

myMusic = \relative c' {
   \key \originalKey \originalMode
   | a4 b c d
   | e2 e
   | f4 e d b
   | a1 |
 }

myChords = \chordmode { a1:m e1:m }
myLyrics = \lyricmode { This is a test. }

% This renders only when you compile tune.ly directly

% --- OPTION A: Just the melody (no named arguments) ---
\scoreIfStandalone \myMusic

% --- OPTION B: Named arguments for tempo only (dotted quarter = 80) ---
\scoreIfStandalone
  #`((unit . "4.")
     (bpm  . 80))
  \myMusic

% --- OPTION C: Using "Named Arguments" for chords and lyrics (quarter = 120) ---
\scoreIfStandalone
  #`((chords . ,myChords)
     (lyrics . ,myLyrics)
     (unit . "4")
     (bpm  . 120))
  \myMusic

