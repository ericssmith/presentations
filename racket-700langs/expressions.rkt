#lang slideshow

(require slideshow/code)
(require "helpers.rkt")

(provide expressions-slides)

(define (expressions-slides)

(slide
 #:title "Expressions"
 #:layout 'tall

 (colorize (para "\"The convenience of algebraic notation for the description of procedures derives in large part from the fact that frequently the output of one procedure serves the input for another and the functional notation enables us to avoid giving the intermediate result a name.\"") "blue")
 (cite "John McCarthy"
      "An Algebraic Language for the Manipulation of Symbolic Expressions"
      "MIT AI Lab Memo 1"
      "September, 1958"))

(slide
 #:title "Conditional Expressions"
 #:layout 'tall

 (bitmap "conditional-expr.png")

 'alts
 (list
  (list
   (red (para "1957 John McCarthy is frustrated with IF procedures and IF statements."))
   (blue (para "\"One of the weakest features of present programming languages is in the means they provide for treating conditionals, that is the calculation of quantities where the operations used depends on the result of certain prior tests.\""))
   (cite "John McCarthy"
         "An Algebraic Language for the Manipulation of Symbolic Expressions"
         "MIT AI Lab Memo 1"
         "September, 1958"))
  (list
   (blue (para "\"The use of propositional quantities, predicates, and conditional expressions, essentially solves this problem and eliminates most of the small scale branching from source programs.\""))
   (cite "John McCarthy"
         "An Algebraic Language for the Manipulation of Symbolic Expressions"
         "MIT AI Lab Memo 1"
         "September, 1958"))
  (list
   (blue (para "\"A paper defining conditional expressions and proposing their use in Algol was sent to the CACM, but was demoted to a letter to the editor, because it was very short.\""))
   (cite " Maybe??? John McCarthy" "Letter to the Editor" "CACM, Vol. 2, No. 8" "1959")
   (red (t "The ACM subsequently apologized."))
   (para "Footnote in the modern typeset version of his big paper. Also in LISP History."))))

(slide
 #:title "Conditional Expressions"
 #:layout 'tall

 (bitmap "conditional-expr-ex.png")

 (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
       "CACM" "April, 1960"))

)
