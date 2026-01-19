% file: include-score-if-standalone.ily
\version "2.24.4"
%{
this function serves as a sophisticated Include Guard. 
It solves a common architectural problem in LilyPond: 
the conflict between "Music Data" and "Music Presentation."

  1. This file provides the \scoreIfStandalone command.
  2. Arguments: \scoreIfStandalone #'((key . value)) \melody
  3. Possible Keys:
     - chords: a \chordmode block
     - lyrics: a \lyricmode block
     - unit:   a string ("4", "4.", "2", "8")
     - bpm:    an integer (e.g., 120)
%}

scoreIfStandalone =
#(define-void-function (props melody) ((alist? '()) ly:music?)
   (let* ((current-file (car (ly:input-file-line-char-column (*location*))))
          (base-current (basename current-file ".ly"))
          (base-output (basename (ly:parser-output-name) ""))
          (is-debug (if (defined? 'debug) debug #f))

          ;; Extract values with empty defaults
          (chordNames (assoc-get 'chords props (make-music 'SequentialMusic 'void #t)))
          (words      (assoc-get 'lyrics props (make-music 'SequentialMusic 'void #t)))
          (bpm-val    (assoc-get 'bpm props 100))
          (unit-str   (assoc-get 'unit props "4"))

          ;; Parse tempo unit - use a simple duration map
          (tempo-duration (cond
                            ((string=? unit-str "1") (ly:make-duration 0 0))
                            ((string=? unit-str "2") (ly:make-duration 1 0))
                            ((string=? unit-str "4") (ly:make-duration 2 0))
                            ((string=? unit-str "4.") (ly:make-duration 2 1))
                            ((string=? unit-str "8") (ly:make-duration 3 0))
                            ((string=? unit-str "8.") (ly:make-duration 3 1))
                            ((string=? unit-str "16") (ly:make-duration 4 0))
                            (else (ly:make-duration 2 0))))

          ;; Check for lyrics presence
          (has-lyrics (and (ly:music? words)
                           (not (eq? #t (ly:music-property words 'void))))))

     (if is-debug
         (begin
           (ly:message "\n[DEBUG scoreIfStandalone]")
           (ly:message "  Current file: ~a.ly" base-current)
           (ly:message "  Output name:  ~a" base-output)
           (ly:message "  Match: ~a (will ~a generate score)"
                       (string=? base-current base-output)
                       (if (string=? base-current base-output) "YES" "NO"))
           (ly:message "  Tempo: ~a = ~a BPM" unit-str bpm-val)
           (ly:message "  Has chords: ~a" (not (null? (ly:music-property chordNames 'elements))))
           (ly:message "  Has lyrics: ~a" has-lyrics)))

     (if (string=? base-current base-output)
           (add-score
             (if has-lyrics
               #{
                 \score {
                   <<
                     \new ChordNames $chordNames
                     \new Staff { $melody }
                     \addlyrics { $words }
                   >>
                   \layout { }
                   \midi {
                     \tempo $tempo-duration = $bpm-val
                   }
                 }
               #}
               #{
                 \score {
                   <<
                     \new ChordNames $chordNames
                     \new Staff { $melody }
                   >>
                   \layout { }
                   \midi {
                     \tempo $tempo-duration = $bpm-val
                   }
                 }
               #})))))
