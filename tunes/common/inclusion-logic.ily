% inclusion-logic.ily

% Define a function that only adds a score if the file is NOT being included
scoreIfStandalone =
#(define-void-function (score-music) (ly:music?)
   (let* ((current-file (car (ly:input-file-line-char-column (*location*))))
          (base-current (basename current-file ".ly"))
          (base-output (basename (ly:parser-output-name) "")))
     (if (string=? base-current base-output)
         (add-score
          #{
            \score {
              #score-music
              \layout {}
            }
          #}))))