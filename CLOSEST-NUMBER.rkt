;https://www.hackerrank.com/challenges/closest-number/problem/

#lang racket

(define (chk a b x)
  (define q (expt a b))
  (define p (quotient (if (integer? q)
                          q
                          (round q)) x))
  (if (< (- (* (add1 p) x) q) (- q (* p x)))
      (* (add1 p) x)
      (* p x)))

(define (inp t)
  (cond
   [(zero? t) (void)]
   [else (printf "~a~n" (chk (read) (read) (read))) (inp (sub1 t))]))

(inp (read))