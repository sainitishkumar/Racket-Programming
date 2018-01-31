;https://www.hackerrank.com/challenges/grading/problem/

#lang racket

(define num (string->number (read-line)))
(define grade 0)
(define dum 0)
(define (func grade)
  (set! dum 0)
  (for ([i (in-naturals)])
    #:break (>= dum grade)
    (set! i (+ i 1))
    (set! dum (* 5 i)))
  (cond
    [(and (< (- dum grade) 3) (>= dum 40)) (println dum)]
    [(and (< (- dum grade) 3) (< dum 40)) (println grade)]
    [(>= (- dum grade) 3) (println grade)]
    [(= grade dum)(print grade)]
    ))
(for ([i (in-range 0 num)])
  (set! grade (string->number (read-line)))
  (func grade))