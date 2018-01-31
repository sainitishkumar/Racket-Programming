;https://www.hackerrank.com/challenges/restaurant/problem/

#lang racket

(define n (read-line))
(set! n (string->number n))
(define num1 1)
(define num2 1)
(define gcd1 1)
(define (func lis)
  (set! num1 (string->number (list-ref lis 0)))
  (set! num2 (string->number (list-ref lis 1)))
  (set! gcd1 (gcd num1 num2))
  (set! gcd1 (* gcd1 gcd1))
  (set! gcd1 (/ (* num1 num2) gcd1))
  (println gcd1))
(define lis (list ))
(for ([i (in-range 0 n)])
  (set! lis (read-line))
  (set! lis (string-split lis))
  (func lis))
