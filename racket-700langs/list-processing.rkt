#lang slideshow

(require slideshow/code)
(require "helpers.rkt")

(provide list-processing-slides)

(define (list-processing-slides)

(slide
 #:title "List Processing"
 #:layout 'tall

 (para "1956. Dartmouth Summer Research Project.")
 (para "John McCarthy is thinking about:")
 (apply item "advice taker" (colorize-words "(proto logic programming)" "red"))
 (apply item "symbolic differentiation" (colorize-words "(proto functional programming)" "red")))

(slide
 #:title "List Processing"
 #:layout 'tall

 (para "1956. Dartmouth Summer Research Project.")
 (blue (para "Newell, Shaw, and Simon present IPL 2, an assembly language for list processing."))
 (red
  (para "Instead of just working with numbers, and arrays of numbers, let's compute with recursive data structures!")))

(slide
 #:title "List Processing"
 (colorize (para "recursive data structures + algebraic notation") "blue")
 (para "Meanwhile IBM's Fortran project introduces the idea of writing programs algebraically.")
 (colorize (para "How? Add it to Fortran?") "red")
 (para "1957. John McCarthy experiments with a combination of FORTRAN and list processing.")
 (para "1957. John McCarthy meets Steve Russell.")
 (colorize (para "Algol58? A new language?") "red")
 (para "John McCarthy fails to push this stuff into Algol58."))

)
