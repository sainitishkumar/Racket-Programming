#lang racket

(define lis11 (read-line))         ; https://www.hackerrank.com/challenges/huge-gcd-fp/
(define lis12 (read-line))
(define lis13 (read-line))
(define lis14 (read-line))
(define lis (string-join (list lis11 lis12 lis13 lis14)))
(define lis1 (string-split lis))
(define num 1)
(define num2 1)
(define n (string->number (list-ref lis1 0)))
(define m (string->number (list-ref lis1 (+ n 1))))  
(for ([i (in-range 1 (+ n 1))])
  ;(println (list-ref lis1 i))
  (set! num (* num (string->number (list-ref lis1 i)))))

(for ([i (in-range  (+ n 2) (+ n (+ m 2)))])
  ;(println (list-ref lis1 i))
  (set! num2 (* num2 (string->number (list-ref lis1 i)))))
(define la (+ 7 (expt 10 9)))
(modulo (gcd num num2) la)