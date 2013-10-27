#lang slideshow

(require slideshow/code)
(require "helpers.rkt")

(provide interlude-slides)

(define (interlude-slides)

(slide
 #:title "Interlude: Obvious Right?"
 #:layout 'auto
 (red (t "1958"))
 (blue (item "List processing AKA recursive data structures."))
 (blue (item "Algebraic notation AKA expressions."))
 (blue (item "Conditional expressions AKA branching problem solved."))
 (para "Good! Good! Good! Conclusion:")
 (blue (item "Programming languages will start with this base."))
 (para "NOTE: No esoteric compiler or runtime technology required (yet)."))

(slide
 #:title "Interlude: Wrong"
 #:layout 'auto
 'alts
 (list
  (list
   (colorize (para "\"Some corporate programming guidelines list the use of the conditional operator as bad practice because it can harm readability and long-term maintainability.\"") "blue")
   (anonymous "?: in style guidelines" "Wikipedia" "October, 2013")
   (colorize (para "\"?:\" or \"ternary operator\" is what imperative programmers call conditional expressions.") "red"))
  (list
   (red (t "over 30 years later..."))
   (para "Python version 0.9.0 was released in February 1991.")
   (red (t "finally, almost 50 years later..."))
   (para "Python version 2.5 was released  in September 2006 with conditional expressions.")
   (colorize  (t "x = true_value if condition else false_value") "blue")
   (colorize (t "but imagine nesting that syntax!") "red"))
 (list
  (red (t "over 50 years later:"))
  (anonymous "\"Q: Does Go have the ?: operator?\"" "The Go Programming Language FAQ" "October, 2013")
  (blue (para "\"A: There is no ternary form in Go. You may use the following to achieve the same result:\""))
  (foreign-code
"if expr {
    n = trueVal
} else {
    n = falseVal
}")
  (colorize (para "Go you are making me cry! That is not a conditional expression.") "red"))))

)
