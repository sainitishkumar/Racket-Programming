;https://www.hackerrank.com/challenges/filling-jars/problem

#lang racket
(define str (string-split (read-line)))
(define n (string->number (list-ref str 0)))
(define m (string->number (list-ref str 1)))
(define lis 0)
(define a 0)
(define b 0)
(define k 0)
(define (count m dum)
  (cond [(zero? m)(println (floor (/ dum n)))]
        [else (set! a (read))(set! b (read))(set! k (read))
              (count (- m 1) (+ dum (* (- (+ 1 b) a) k)))]))
(count m 0)