#lang racket

(define n (read-line))
(set! n (string->number n))
(define num 1)
(define lis (list ))
(define sum 0)
(define (floor n m)
  (round (/ (+ n m) (* n m))))
(define (func lis)
  (for ([i (in-range 0 (length lis))])
    (set! sum 0)
    (for ([j (in-range (add1 i) (length lis))])
      (set! sum (+ sum (floor (string->number (list-ref lis i)) (string->number (list-ref lis j)))))
      (println sum))))
(for ([i (in-range 0 n)])
  (set! num (string->number (read-line)))
  (set! lis (flatten (list (append (string-split (read-line))))))
  (func lis)
  )


