\version "2.24.4"
% include-score-if-standalone.ily

%{

this function serves as a sophisticated Include Guard. It solves a common architectural problem in LilyPond: the conflict between "Music Data" and "Music Presentation."


  1. This file provides the \scoreIfStandalone command.
  2. Arguments: \scoreIfStandalone #'((key . value)) \melody
  3. Possible Keys: 
     - chords: a \chordmode block
     - lyrics: a \lyricmode block
     - unit:   a string ("4", "4.", "2", "8")
     - bpm:    an integer (e.g., 120)
%}

scoreIfStandalone =
#(define-void-function (props melody) (alist? ly:music?)
  (let* ((current-file (car (ly:input-file-line-char-column (*location*))))
         (base-current (basename current-file ".ly"))
         (base-output (basename (ly:parser-output-name) ""))
         (is-debug (if (defined? 'debug) debug #f))
         
         ;; Extract values
         (chordNames (assoc-get 'chords props #{ { } #}))
         (words      (assoc-get 'lyrics props #{ { } #}))
         (bpm-val    (assoc-get 'bpm    props 100))
         
         ;; Handle the Unit string (e.g., "4.")
         (unit-str   (assoc-get 'unit   props "4"))
         ;; Convert string to a Duration object
         (final-unit (ly:parse-string-expression (string-append "{\\tempo " unit-str " = 100}")))
        )

    ;; Extraction of the duration from the temporary tempo object
    (let ((tempo-duration (ly:prob-property (car (ly:music-property final-unit 'elements)) 'tempo-unit)))

      (if is-debug
          (ly:message "\n[DEBUG] File: ~a | Output: ~a | Match: ~a\n" 
                      base-current base-output (string=? base-current base-output)))

      (if (string=? base-current base-output)
          (add-score
           #{
             \score {
               <<
                 #(if (not (ly:music-empty? chordNames))
                      #{ \new ChordNames #chordNames #})
                 \new Staff { #melody }
                 #(if (not (ly:music-empty? words))
                      #{ \addlyrics { #words } #})
               >>
               \layout { }
               \midi { 
                 \tempo #tempo-duration = #bpm-val 
               }
             }
           #}))))
