#lang racket


(define (penta m)
  (println (+ (* m m) (/ (* (- m 1) m) 2))))
(define m (read)) 
(for ([i (in-range 1 (+ m 1))])
  (define n (read))
  (penta n))