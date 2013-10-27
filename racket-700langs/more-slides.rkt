(slide
 #:title "Conditional expressions, recursion,functional arguments"
 #:layout 'tall

 (para "symbolic differentiation -> recursive functions, maplist -> functional arguments (apparently trouble defining maplist (AIM-001, AIM-002) lead him to lambda (or maybe lead him again to lambda).")

 )

(slide
 #:title "The Revised Revised Report on Scheme"
 #:layout 'tall
 (t "One Thing to name them all")
 (t "One Thing to define them")
 (t "One Thing to place them in environments")
 (t "and bind them"))

(slide
 #:title "Revised Report on the Algorithmic Language Algol 60"
 #:layout 'tall
 (para "By J.W. Backus, F.L. Bauer, J.Green, C. Katz, J. McCarthy, P.
Naur, A.J. Perlis, H. Rutishauser, K. Samuelson, B. Vauquois, J.H.
Wegstein, A. van Wijngaarden, M. Woodger, Edited by Peter Naur")
 'next
 (t "Revised(3) Report on the Algorithmic Language Scheme")
 (t "Dedicated to the Memory of ALGOL 60")
 'next
 (colorize (t "♥") "red")
 )

(slide
 #:title "Algol60"
 #:layout 'tall
 (vl-append
  (current-code-line-sep)
  (tt "#lang algol60")
  (tt "begin")
  (tt "  integer procedure SIGMA(x, i, n);")
  (tt "    value n;")
  (tt "    integer x, i, n;")
  (tt "  begin")
  (tt "    integer sum;")
  (tt "    sum := 0;")
  (tt "    for i := 1 step 1 until n do")
  (tt "      sum := sum + x;")
  (tt "    SIGMA := sum;")
  (tt "  end;")
  (tt "  integer q;")
  (tt "  printnln(SIGMA(q*2-1, q, 7));")
  (tt "end"))
 (colorize (hline (* 3/4 client-w) gap-size) "green")
 (tt "49"))


(slide
 #:title "???"
 #:layout 'tall
 (para "The purpose of the algorithmic language is to describe computational processes. The basic concept used for the description of calculating rules is the well known arithmetic expression containing as constituents numbers, variables, and functions. From such expressions are compounded, by applying rules of arithmetic composition, self-contained units of the language -- explicit formulae -- called assignment statements."))

(slide
 #:title "Higher order Function aka Funargs"
 #:layout 'tall
 (vl-append
  (current-code-line-sep)
  (tt "procedure euler(fct,sum,eps,tim);")
  (tt "  value eps,tim; integer tim;")
  (tt "  real procedure fct;")
  (tt "  real sum,eps;")
  (para "  comment euler computes the sum of fct(i) for i from zero up to infinity by means of a suitably refined euler transformation.;"))
 )

(slide
 #:title "Lexical Scope"
 #:layout 'tall
 (t "Paraphrasing Wikipedia:")
 (para "ALGOL was the first language implementing nested function definitions with lexical scope.")
 (para "ALGOL is generally considered the first higher order programming language."))

(slide
 #:title "Lexical Scope"
 #:layout 'tall
 'alts
 (list
  (list (t "The Funarg Problem Explained, by Joseph Weizenbaum:"))
  (list (t "x*x + y*y"))
  (list (t "g(y) = x*x + y*y"))
  (list (t "f(x) = g where g(y) = x*x + y*y"))
  (list (t "f(x) = g where g(y) = x*x + y*y")
        (t "p = f(3)"))
  (list (t "f(x) = g where g(y) = x*x + y*y")
        (t "p = f(3)")
        (t "what is p(4)?"))

  (list (code (+ (* x x) (* y y))))
  (list (code (define (g y) (+ (* x x) (* y y)))))
  (list (code (define (f x)
                (define (g y) (+ (* x x) (* y y)))
                g)))
  (list (code (define (f x)
                (define (g y) (+ (* x x) (* y y)))
                g)
              (define p (f 3))))
  (list (code (define (f x)
                (define (g y) (+ (* x x) (* y y)))
                g)
              (define p (f 3))
              (p 4)))
  (list (code (define (f x)
                (define (g y) (+ (* x x) (* y y)))
                g)
              (define p (f 3))
              (p 4)
              (let ((x 10))
                (p 4))))))

(slide
 #:title "Closure"
 #:layout 'tall
 (para "show a representation (maybe from the Racket manual of the closure p from the example")
 )

(slide
 #:title "NOTE: Scheme supports multiple parameters"
 #:layout 'tall
 (code (define (f x y) (+ (* x x) (* y y)))
       (f 3 4))
 (para "but the point in lexical scope was to show nested functions.")
 )

(slide
 #:title "forshadowing:"
 #:layout 'tall
 (code (define (f x)
         (define (g y) (+ (* x x) (* y y)))
         g)
       (code:comment "terse:")
       (define ((f x) y) (+ (* x x) (* y y)))
       (code:comment "verbose:")
       (define f
         (lambda (x)
           (lambda (y)
             (+ (* x x) (* y y)))))))

(slide
 #:title "call by value"
 #:layout 'tall
 (item "Steele: call by name -> call by value")
 )

(slide
 #:title "Objects and Actors"
 #:layout 'tall
 (t "Inspired in part by SIMULA and Smalltalk, Carl Hewitt
developed a model of computation around “actors”")

 (item "Every agent of computation is an actor")
 (item "Every datum or data structure is an actor")
 (item "An actor may have “acquaintances” (other actors it knows)")
 (item "Actors react to messages sent from other actors")
 (item "An actor can send messages only to acquaintances and to actors received in messages")
 (para "“You don’t add 3 and 2 to get 5; instead, you send 3 a message asking it to add 2 to itself”")
 
 (t "JAOO-SchemeHistory-2006public.pdf"))


(slide
 #:title "from actors to tail calls"
 #:layout 'tall


 (t "Hewitt: actors")
 (t "reference")
 (t "Steele & Sussman: actors?")
 (t "JAOO-SchemeHistory-2006public.pdf")
 (t "Goal: understanding by implementation.")
 (item "http://neopythonic.blogspot.com/2009/04/tail-recursion-elimination.html")
 (item "http://jeapostrophe.github.com/2013-07-08-stack-post.html")
 (para "In a tail-recursive, lexically scoped language, if your primitives operators are functions, you will tend to write programs in a functional style. If your primitive operators are actors, you will tend to write programs in an actor style."))

(slide
 #:title "metaprogramming aka macros / the story of hygiene"
 #:layout 'tall
 (para "lisp.ps: this feature probably accounts for LISP's success in competition with these languages, especially when large programs have to be written. The advantage is like that of binary computers over decimal - but larger.")

 (para "a new generation of programmers appeared who preferred
internal notation to any FORTRAN-like or ALGOL-like notation that
could be devised.")

 (item "A lisp (small core + metaprogramming aka macros)")
 (code (let ((x 2))
         (+ 1 x)))

 (t "versus")

 (code ((lambda (x) (+ x 1)) 2)))

(slide
 #:title "tail call"
 #:layout 'tall
 (bitmap "functions.png")

 (para "An expression expr1 is in tail position with respect to an enclosing expression expr2 if, whenever expr1 becomes a redex, its continuation is the same as was the enclosing expr2’s continuation. (racket manual)"))

(slide
 #:title "modules"
 #:layout 'tall
 (t "remember this?")
 (t "g(y) = x*x + y*y")
 )

(slide
 #:title "languages"
 #:layout 'tall
 )

(slide
 #:title "A History of Good Ideas"
 #:layout 'tall
 (item "lexical scope")
 (item "tail recursion")
 (item "macros")
 (item "modules")
 (item "languages")

 (item "continuations ?")
 (item "multi-return function call ?")
 (item "reactive programming")
 (item "samth's extensible match")
 (item "constraint programming")
 (item "the list goes on and on...")

 )

(slide
 (para "AIM-452 aka R1RS: We discovered (the hard way) that the straightforward implementation of EVALUATE (destroys referential transparency.")
 )

(slide
 #:title "0, nil, false"
 (para "lisp: Besides encouraging pornographic programming, giving a special interpretation to the address 0 has caused difficulties in all subsequent implementations."))

(slide
 #:title "λ the ultimate"
 'alts
 (list
  (list
   (para "The λ-calculus can be seen as a universal glue by which compound constructs can be built inductively from simpler ones and a set of primitives. In particular, if our primitives are functions,then our constructs are functions; if our primitives are relations,then our constructs are relations; if our primitives are actors, then our constructs are actors. The essence of the matter is that the λ-calculus provides a way of abstracting entities of any particular type and then combining such abstractions with other entities to make new entities of that same type, which are instances of the abstractions."))
  (list
   (para "This became apparent to us in, for example, the development of constraint languages. A λ-expression (or its “value”) may be a function (if its application yields a value), but it is more general and more fruitful to regard it as an abstraction. Similarly, a combination is not always a “function call”; it is more general simply to speak of instantiating an abstraction. Given the right primitives,the λ-calculus can serve as a foundation for the abstraction and instantiation of virtually any kind of complex conceptual structure."))))

(slide
 #:title "property lists on atoms, see lisp:, lead to bad module systems. also closure meta, eq? tables, etc.")

(slide
 #:title "scribble, slideshow, Redex"

 (t "Docs with indexs?")
 (t "Slides with unit tests?")
 (t "Papers with test suites?")
 (para "McCarthy recalls (22): ... this EVAL was written and published in the paper and Steve Russell said, look, why don't I program this EVAL and you remember the interpreter, and I said to him, ho, ho, you're confusing theory with practice, this EVAL is intended for reading not for computing. But he went ahead and did it. That is, he compiled the EVAL in my paper into 704 machine code fixing bugs and then advertised this as a LISP interpreter which it certainly was, so at that point LISP had essentially the form that it has today, the S-expression form ...")

)

(slide
 #:title "concepts left out"
 (t "quotation, John McCarthy figured this out early on.")
 (t "label, for recursive function definition")
 (t "apply  first in terms of substitutions finally to bindings")
 (t "garbage collection.")
 )

(slide
 #:title "What did I learn"
 (t "Lambda is pure abstraction.")
 (t "Your primitives determine what you abstract over.")
 (t "functions, actors, relations, whatever"))

(slide
 (t "fin"))

(slide
 #:title "main points"
 #:layout 'tall
 (item (para "Lambda is abstraction. Primitive make it functional, actor, oop, relational,, or xxxxxx style."))

 (item (para "Understand xxxxxx Style in terms of abstraction over primitives before adding sugar."))

 (item (para "Worse may be better in the short term, but pay attention to the communities that cultivate best practices over the long term."))

 (item (para "The turtle keeps going long after the hare is dead, decomposed, and forgotten."))

 )
