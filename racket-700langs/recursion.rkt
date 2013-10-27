#lang slideshow

(require slideshow/code)
(require "helpers.rkt")

(provide recursion-slides)

(define (recursion-slides)

(slide
 #:title "Recursion"
 #:layout 'tall
 (para "\"The use of propositional quantities, predicates, and conditional expressions, essentially solves this problem and eliminates most of the small scale branching from source programs.")
 (blue (para "In combination with the feature of recursive definition it permits certain subroutines to be defined by single formulas in this language that are quite involved programs in other languages.\""))
 (cite "John McCarthy"
       "An Algebraic Language for the Manipulation of Symbolic Expressions"
       "MIT AI Lab Memo 1"
       "September, 1958"))

(slide
 #:title "Recursion"
 #:layout 'tall
 (bitmap "fact1.png")
 (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
       "CACM" "April, 1960")
 (red (para "He also shows one liners for GCD and SQRT."))
 (red (para "The" (tt "n") "'s are all over the place. What does this mean?")))

(slide
 #:title "Higher-Order Functions"
 #:layout 'tall
 (bitmap "maplist.png")
 (cite "John McCarthy"
       "An Algebraic Language for the Manipulation of Symbolic Expressions"
       "MIT AI Lab Memo 1"
       "September, 1958")
 (red (para "There is a problem here with the" (tt "J") "."))
 (red (para "Incidentally, this can be made to work in Algol60.")))

(slide
 #:title "Higher-Order Functions"
 #:layout 'tall
 (algol60-code
"#lang algol60
begin
  integer procedure SIGMA(x, i, n);
    value n; integer x, i, n;
  begin
    integer sum; sum := 0;
    for i := 1 step 1 until n do
      sum := sum + x;
    SIGMA := sum;
  end;
  integer q;
  printnln(SIGMA(q*2-1, q, 7));
end")
 (colorize (hline (* 3/4 client-w) gap-size) "green")
 (tt "49"))

(slide
 #:title "Functions and Forms"
 #:layout 'tall
 (blue (para "\"It is usual in mathematics—outside of mathematical logic—to use the word “function” imprecisely and to apply it to forms such as" (tt "y^2 + x") ". Because we shall later compute with expressions for functions, we need a distinction between functions and forms and a notation for expressing this distinction.\""))
 (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
       "CACM" "April, 1960"))

(slide
 #:title "Functions and Forms"
 #:layout 'tall
 (blue (para "\"Let f be an expression that stands for a function of two integer variables. It should make sense to write" (tt "f(3, 4)") "and the value of this expression should be determined. The expression" (tt "y^2 + x") "does not meet this requirement;" (tt "y^2 + x(3, 4)") "is not a conventional notation, and if we attempted to define it we would be uncertain whether its value would turn out to be 13 or 19.\""))
 (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
       "CACM" "April, 1960"))

(slide
 #:title "Functions and Forms"
 #:layout 'tall
 (blue (para "\"Church calls an expression like" (tt "y^2 + x") ", a form. A form can be converted into a function if we can determine the correspondence between the variables occurring in the form and the ordered list of arguments of the desired function. This is accomplished by Church’s λ-notation.\""))
 (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
       "CACM" "April, 1960"))

(slide
 #:title "Recursion"
 #:layout 'tall
 (vl-append
  (lang racket)
  (code
   (define (! n)
     (if (< n 2) 1 (* n (! (- n 1))))))
  (blank ((get-current-code-font-size)))
  (red (t "just syntactic sugar for this:"))
  (blank ((get-current-code-font-size)))
  (code
   (define !
     (lambda (n)
       (if (< n 2) 1 (* n (! (- n 1)))))))))

(slide
 #:title "Recursion"
 #:layout 'tall
 (algol60-code
"#lang algol60

begin
  integer procedure FACTORIAL(n);
    value n;
    integer n;
    FACTORIAL :=
      if (n < 2)
      then 1
      else n * FACTORIAL(n-1);
end"))

(slide
 #:title "Higher-Order Functions"
 #:layout 'tall
 (vl-append
  (bitmap "maplist2.png")
  (bitmap "maplist3.png")
  (blank ((get-current-code-font-size)))
  (cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
        "CACM" "April, 1960")
  (blank ((get-current-code-font-size)))
  (red (para "NOTE: Back in the day, they called these functional arguments or FUNARGs."))))

(slide
 #:title "Higher-Order Functions"
 #:layout 'tall
 (vl-append
  (lang "racket")
  (code
   (define (maplist x f)
     (if (pair? x)
         (cons (f x)
               (maplist (cdr x) f))
         '())))
  (blank ((get-current-code-font-size)))
  (code (maplist '("a" "b" "c") length))
  (colorize (hline (* 3/4 client-w) gap-size) "green")
  (code '(3 2 1)))
 (red (para (tt "Maplist") "is a weird function, so let's skip it and look at" (tt "map") ".")))

(slide
 #:title "Higher-Order Functions"
 #:layout 'tall
 (vl-append
  (lang "racket")
  (code
   (define (map f lst)
     (if (pair? lst)
         (cons (f (car lst))
               (map f (cdr lst)))
         '())))
  (blank ((get-current-code-font-size)))
  (code (map string-upcase '("a" "b" "c")))
  (colorize (hline (* 3/4 client-w) gap-size) "green")
  (code '("A" "B" "C")))
 (red (para "A slightly beefier version of" (tt "map") "is built into Scheme and Racket.")))

)
