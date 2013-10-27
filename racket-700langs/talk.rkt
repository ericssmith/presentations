#lang slideshow

;; NOTE: arandr can be helpful setting up monitors.
;; NOTE: C-x C-+, C-x C-- to zoom in emacs.
;; NOTE: A-g in slideshow to select a slide.
;; NOTE: avoid bug in old slideshow:
;;       PATH=/home/acarrico/src/git/racket/racket/bin:$PATH

(require slideshow/code)
(require "helpers.rkt")

(slide
 #:title "The Next 700 Programming Languages"
 (t "by Eric Smith")
 (t "@eric_s_smith")
 (t "https://github.com/ericssmith/")
 (bitmap "functional.png")
 (t "@vtfun")
 (t "Vermont Functional Users Group"))

(slide
 #:title "John McCarthy Red Sox Beard Award"
 (bitmap "mccarthy.jpg"))

(slide
 #:title "Revised Report on the Algorithmic Language Algol 60"
 #:layout 'tall
 (para "By J.W. Backus, F.L. Bauer, J.Green, C. Katz, J. McCarthy, P. Naur, A.J. Perlis, H. Rutishauser, K. Samuelson, B. Vauquois, J.H. Wegstein, A. van Wijngaarden, M. Woodger, Edited by Peter Naur")
 (colorize (t "♥") "red")
 (t "Revised(3) Report on the Algorithmic Language Scheme")
 (t "Dedicated to the Memory of ALGOL 60")
 (para "By H. Abelson, R. K. Dybvig, C. T. Haynes,G. J. Rozas, N. I. Adams IV, D. P. Friedman, E. Kohlbecker, G. J. Sussman, D. H. Bartley, R. Halstead, D. Oxley, M. Wand, G. Brooks, C. Hanson, K. M. Pitman, Edited by Jonathan Rees and William Clinger"))
(require "racket-is.rkt")
(racket-is-slides)
(require "list-processing.rkt")
(list-processing-slides)
(require "expressions.rkt")
(expressions-slides)
(require "interlude.rkt")
(interlude-slides)
(require "recursion.rkt")
(recursion-slides)

(slide
 #:title "Conclusion: Obvious Right?"
 #:layout 'tall
 (red (t "1960"))
 (blue (item "List processing AKA recursive data structures."))
 (blue (item "Algebraic notation AKA expressions."))
 (blue (item "Conditional expressions AKA branching problem solved."))
 (blue (item "Recursion."))
 (blue (item "Funargs AKA higer order functions."))
 (blue (item "Lambda."))
 (para "Good! Good! Good! Conclusion:")
 (blue (item "Programming languages will start with this base.")))

(slide
 #:title "Loose Ends in this Narrative"
 #:layout 'tall
 (item "Steve Russell")
 (item "Universal Function")
 (item-cite "John McCarthy" "Recursive Functions of Symbolic Expressions and Their Computation by Machine"
	    "CACM" "April, 1960")
 (item "Lisp and Algol60")
 (item "REQUEST: P. J. Landin The Next 700 Programming Languages. CACM 9(3), March 1966. SASL, Miranda, ML, Haskell, Clean, Lucid. \"Most programming languages are partly a way of expressing things in terms of other things and partly a basic set of given things.\""))

(slide
 #:title "Part 2 -- Lambda the Ultimate!"
 #:layout 'tall
 (para "Today I wanted to tell you the story of Scheme and Racket, but first I had to tell you the story of Lisp and Algol60.")
 (red (t "sorry")))

(slide
 #:title "Promo"

 (para "This is VTFun's first Racket or Scheme talk, but instead of a tutorial, I'm planning a tour of a few key ideas from the 1950s to the present that every programmer should grok, and no language designer should ignore. I hope that each slide will be easy to follow, seem obvious in retrospect, and maybe make you a better programmer."))

(slide
 #:title "Bio"

 (para "About the Presenter: Anthony Carrico earned a master's degree in electrical and computer engineering, primarily in signal processing and computer architecture. He tried to learn to code at an AI company heated with Lisp and Unix machines. He went on to program Japanese music video games. His wife teaches at St. Mike's and he stays home with the kids."))

(slide
 #:title "Themes"

 (item "Lambda is abstraction. The primitives make it functional, actor, oop, relational, constraint, or xxxxxx style (to paraphrase Steele).")

 (item "Understand Xxx Style in terms of abstraction over primitives before adding sugar. (Hmm, I'll credit Friedman this time).")

 (item "Worse may be better in the short term, but pay attention to the communities that cultivate best practices over the long term.")

 (item "The turtle keeps on going long after the hare is dead, decomposed, and forgotten."))

(slide
 #:title "fin")
