#lang racket
;https://www.hackerrank.com/challenges/triangle-numbers/problem
(define n (string->number (read-line)))
(define (pprint n)
  (cond [(and (even? n) (zero? (modulo n 4))) (println 3)]
        [(and (even? n) (not (zero? (modulo n 4)))) (println 4)]
        [else (println 2)])) 
(for ([i (in-range 0 n)])
  (pprint (string->number (read-line))))