;https://www.hackerrank.com/challenges/library-fine/problem/

#lang racket

(define str2 (string-split (read-line)))
(define str1 (string-split (read-line)))

(set! str1 (map (lambda (x)(string->number x)) str1))
(set! str2 (map (lambda (x)(string->number x)) str2))

(define d1 (list-ref str1 0))
(define m1 (list-ref str1 1))
(define y1 (list-ref str1 2))

(define d2 (list-ref str2 0))
(define m2 (list-ref str2 1))
(define y2 (list-ref str2 2))
(cond [(and (and (= y1 y2) (= m1 m2)) (> d2 d1)) (println (* 15 (- d2 d1)))]
      [(and (and (= y1 y2) (not (= m1 m2))) (> m2 m1))(println (* 500 (- m2 m1)))]
      [(< y1 y2)(println 10000)]
      [else (println 0)])