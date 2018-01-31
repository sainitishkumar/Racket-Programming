;https://www.hackerrank.com/challenges/little-gaurav-and-sequence/problem
#lang racket

(define str (read-line))
(define t (string->number str))
(define dum 0)
(define sum 0)
(define (printq n)
  (cond [(= 1 (modulo n 2))(println 0)]
        [else (set! sum 0)(for ([i (in-naturals)])
                            #:break (> (expt 2 i) n)
                            (cond [(= i 0)(set! sum (+ sum 2))]
                                  [(= i 1)(set! sum (+ sum 4))]
                                  [else (set! sum (+ sum 6))])(set! sum (modulo sum 10)))
              (println (modulo sum 10))]))
(for ([i (in-range 0 t)])
  (printq (string->number (read-line))))