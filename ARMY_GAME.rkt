#lang racket
;https://www.hackerrank.com/challenges/game-with-cells/problem
(define n (read))
(define m (read))
(println (* (floor (/ (add1 n) 2))(floor (/ (add1 m) 2))))