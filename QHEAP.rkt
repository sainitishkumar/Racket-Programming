#lang racket
;https://www.hackerrank.com/challenges/qheap1/problem


(require data/heap)
(define n (string->number (read-line)))
(define heap (make-heap <=))
(define lis 0)
(for ([i (in-range 0 n)])
  (set! lis (string-split (read-line)))
  (cond [(equal? (list-ref lis 0) "1")(heap-add! heap (string->number (list-ref lis 1)))]
        [(equal? (list-ref lis 0) "2")(heap-remove! heap (string->number (list-ref lis 1)))]
        [else (println (heap-min heap))]))