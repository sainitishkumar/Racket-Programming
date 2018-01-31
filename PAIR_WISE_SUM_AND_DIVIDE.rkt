;https://www.hackerrank.com/challenges/pairwise-sum-and-divide/problem
#lang racket

(define t (string->number (read-line)))
(define len 0)
(define c1 0)
(define c2 0)
(define lis 0)
(define var 0)
(define (func c)
  (cond [(< c 2) 0]
        [else (/ (* c (- c 1)) 2)])) 
(for ([i (in-range 0 t)])
  (set! c1 0)(set! c2 0)
  (set! len (read))
  (for ([j (in-range 0 len)])
    (set! lis (read))
    (cond [(= lis 1)(set! c1 (add1 c1))]
          [(= lis 2)(set! c2 (add1 c2))])
    (set! var (+ (* (func c1) 2) (+ (func c2) (* c1 (- len c1)))))
    )
  (println var)
  (set! var 0))
    