#lang racket

(define (sigma x n)
  (let loop ((sum 0)
             (i 1))
    (if (<= i n)
        (loop (+ sum (x i))
              (+ i 1))
        sum)))

(define (rsigma x n)
  (let recurse ((i 1))
    (if (<= i n)
        (+ (x i)
           (recurse (+ i 1)))
        0)))

(sigma (lambda (q) (- (* q 2) 1))
       7)

(rsigma (lambda (q) (- (* q 2) 1))
        7)