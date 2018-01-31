;https://www.hackerrank.com/challenges/the-hurdle-race/problem/

#lang racket

(define str1 (string-split (read-line)))
(define n (string->number (list-ref str1 0)))
(define k (string->number (list-ref str1 1)))
(define lis1 (string-split (read-line)))
(set! lis1 (map (lambda (x) (string->number x)) lis1))
(set! lis1 (sort lis1 >))

(if (>= (- (list-ref lis1 0) k) 0)
    (println (- (list-ref lis1 0) k))
    (println 0))