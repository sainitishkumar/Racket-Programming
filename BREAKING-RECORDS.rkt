;https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem/

#lang racket

(define n (string->number (read-line)))
(define lis (string-split (read-line)))
(set! lis (map (lambda (x) (string->number x)) lis))
(define min (list-ref lis 0))
(define max (list-ref lis 0))
(define min_count 0)
(define max_count 0)
(for ([i (in-range 1 n)])
  (cond [(> (list-ref lis i) max)(set! max (list-ref lis i))(set! max_count (+ max_count 1))]
        [(< (list-ref lis i) min)(set! min (list-ref lis i))(set! min_count (+ min_count 1))]))
(printf "~a ~a"
        max_count
        min_count)