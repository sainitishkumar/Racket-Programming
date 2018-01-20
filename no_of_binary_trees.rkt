#lang racket


(define n (read))
(define (fact n)
  (if (= 0 n) 1
      (* n (fact (- n 1)))))
(define num 1)
(define la (+ 7 (expt 10 8)))
(define (catalon n)
  (println (modulo (/ (fact (* n 2)) (* (fact (+ n 1)) (fact n))) la)))
(for ([i (in-range 1 (+ n 1))])
  (set! num (read))
  (catalon num))
  