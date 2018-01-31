;https://www.hackerrank.com/challenges/bon-appetit/problem/

#lang racket

(define lis1 (string-split (read-line)))
(define lis2 (string-split (read-line)))
(set! lis1 (map (lambda (x) (string->number x)) lis1))
(define n (list-ref lis1 0))
(define k (list-ref lis1 1))
(set! lis2 (map (lambda (x) (string->number x)) lis2))
(define b (string->number (read-line)))

(define sum 0)
(for ([i (in-range 0 n)])
  (set! sum (+ sum (list-ref lis2 i))))

(define share (/ (- sum (list-ref lis2 k)) 2))
(cond [(= 0 (- b share))(printf "Bon Appetit")]
      [else (println (- b share))])
