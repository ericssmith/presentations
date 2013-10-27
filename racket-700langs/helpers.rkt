#lang slideshow

(require slideshow/code)

(provide lang foreign-code algol60-code highlight-last cite item-cite
         colorize-words blue red yellow anonymous)

(define (foreign-code str)
  (apply
   vl-append
   (current-code-line-sep)
   (map (lambda (str)
          (para #:fill? #t (tt str)))
        (string-split str "\n"))))

(define algol60-code foreign-code)

(define-syntax-rule (lang l)
  (vl-append
   (hbl-append (tt "#lang ") (code l))
   (blank (+ ((get-current-code-font-size))
             (current-code-line-sep)))))

(define (highlight-last . strs)
  (apply
   hbl-append
   (append
    (map (lambda (str) (t (string-append str " "))) (drop-right strs 1))
    (list (colorize (t (car (take-right strs 1))) "red")))))

(define (cite who what where when)
  (apply
   para
   (flatten
    (list who "." (map it (string-split what " ")) "." where "." when "."))))

(define (anonymous what where when)
  (apply
   para
   (flatten
    (list (map it (string-split what " ")) "." where "." when "."))))

(define (item-cite who what where when)
  (apply
   item
   (flatten
    (list who "." (map it (string-split what " ")) "." where "." when "."))))

(define (colorize-words str color)
  (map (lambda (str) (colorize (t str) color))
       (string-split str " ")))

(define (blue x) (colorize x "blue"))

(define (red x) (colorize x "red"))

(define (yellow x) (colorize x "yellow"))
