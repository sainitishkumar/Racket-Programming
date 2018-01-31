;https://www.hackerrank.com/challenges/making-anagrams/problem/

#lang racket

(define str1 (string->list (read-line)))
(set! str1 (sort str1 char<?))
(define str2 (string->list (read-line)))
(set! str2 (sort str2 char<?))
(define (common str1 str2)
  (cond [(null? str1) '()]
        [(null? str2) '()]
        [(char=? (car str1)(car str2))
         (cons (car str1) (common (cdr str1) (cdr str2)))]
        [(char<? (car str1)(car str2))
         (common (cdr str1) str2)]
        [else
         (common str1 (cdr str2))]))

(define len (length (common str1 str2)))
(println (- (+ (length str1) (length str2)) (* 2 len)))