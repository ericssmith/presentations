#lang slideshow

(require slideshow/code)
(require "helpers.rkt")

(provide racket-is-slides)

(define (racket-is-slides)

(slide
 #:title "Mathias Felleisen, \"Racket is ...\""
 #:layout 'tall
 (item "a programming language")
 'next
 (item "a family of programming languages")
 'alts
 (list
  (list (highlight-last "racket/base")
        (colorize (t "\"reminiscent of plain Scheme\"") "blue"))
  (list (highlight-last "racket/base" "racket")
        (colorize (t "\"classes, mixins, and traits\", and much more") "blue"))
  (list (highlight-last "racket/base" "racket" "typed/racket")
        (colorize (t "\"as type-safe as ML\"") "blue")
        (blank)
        (it "From Scripts to Programs")
        (para "\"Modules + contracts + occurence typing enables programmers to enrich existing Scheme-style code with types, while requiring few changes.\""))
  (list (highlight-last "racket/base" "racket " "typed/racket" "frtime")
        (colorize (t "dataflow reactive frp") "blue"))
  (list (highlight-last "racket/base " "racket " "typed/racket" "frtime" "lazy")
        (colorize (t "\"stream-based programming like Haskell\"") "blue"))
  (list (highlight-last "racket/base " "racket " "typed/racket" "frtime" "lazy" "web-server"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble" "redex"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble" "redex" "datalog"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble" "redex" "datalog" "racklog"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble" "redex" "datalog" "racklog" "slideshow"))
  (list (t "racket/base racket typed/racket frtime lazy web-server")
        (highlight-last "scribble" "redex" "datalog" "racklog" "slideshow" "more")))
 'next
 (item "a programming language for programming languages")
 (blue (para "\"linguistic mechanisms that enable the quick construction of reliable languages, language fragments, and their composition.\"")))

(slide
 #:title "Slideshow"
 #:layout 'tall
 (vl-append
  (lang slideshow)
  (code
(require slideshow/code)
(require \"helpers.rkt\")

(slide
 #:title "Pay Attention to Racket"
 (t "by Anthony Carrico <acarrico@memebeam.org>")
 (t "@Anthony_Carrico")
 (t "https://github.com/acarrico/")
 (bitmap "functional.png")
 (t "#vtfun @racketlang")
 (t "Vermont Functional Users Group")))))

(slide
 #:title "Slideshow"
 #:layout 'tall
 (vl-append
  (lang slideshow)
  (code
   (require slideshow/code)

   (provide lang foreign-code algol60-code highlight-last
     cite item-cite colorize-words blue red yellow anonymous)

   (define-syntax-rule (lang l)
     (vl-append
      (hbl-append (tt "#lang ") (code l))
      (blank (+ ((get-current-code-font-size))
                (current-code-line-sep)))))

   (define (foreign-code str)
     (apply
      vl-append
      (current-code-line-sep)
      (map (lambda (str)
             (para #:fill? #t (tt str)))
           (string-split str "\n")))))))

(slide
 #:title "Brainf*ck"
 #:layout 'tall
(code
#,(tt "#lang") planet dyoo/bf
++++++[>++++++++++++<-]>.
>++++++++++[>++++++++++<-]>+.
+++++++..+++.>++++[>+++++++++++<-]>.
<+++[>----<-]>.<<<<<+++[>+++++<-]>.
>>.+++.------.--------.>>+.
)
'next
(colorize (hline (* 3/4 client-w) gap-size) "green")
(para (tt "Hello, World!"))
)

(slide
 #:title "Datalog"
 #:layout 'tall
(vl-append
 (current-code-line-sep)
 (tt "#lang datalog")
 (tt "ancestor(A, B) :- parent(A, B).")
 (tt "ancestor(A, B) :-")
 (tt "parent(A, C), D = C, ancestor(D, B).")
 (tt "parent(john, douglas).")
 (tt "parent(bob, john).")
 (tt "ancestor(A, B)?"))
'next
(colorize (hline (* 3/4 client-w) gap-size) "green")
(vl-append
 (current-code-line-sep)
 (para (tt "ancestor(bob, john)."))
 (para (tt "ancestor(john, douglas)."))
 (para (tt "ancestor(bob, douglas)."))))

(slide
 #:title "Algol60"
 #:layout 'tall
 'alts
 (list
  (list (algol60-code
"#lang algol60

begin
  integer procedure FACTORIAL(n);
    value n;
    integer n;
    FACTORIAL :=
      if (n < 2)
      then 1
      else n * FACTORIAL(n-1);
"))
  (list (algol60-code
"  printnln(FACTORIAL(1));
  printnln(FACTORIAL(2));
  printnln(FACTORIAL(3));
  printnln(FACTORIAL(40));
end")))
 'next
 (colorize (hline (* 3/4 client-w) gap-size) "green")
 (foreign-code
  "1
2
6
265252859812191058636308480000000")))
