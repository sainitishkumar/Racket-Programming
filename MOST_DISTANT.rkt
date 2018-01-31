#lang racket
;https://www.hackerrank.com/challenges/most-distant/problem

(require srfi/48)


(define n (read))
(define a 0)
(define b 0)
(define minx 0)
(define maxx 0)
(define miny 0)
(define maxy 0)

(for ([i (in-range 0 n)])
  (set! a (read))(set! b (read))
  (cond [(= 0 a)(set! maxy (max maxy b))(set! miny (min miny b))]
        [(= 0 b)(set! maxx (max maxx a))(set! minx (min minx a))])
  )
(define mx 0)
(set! mx (max (abs (- maxx minx)) (abs (- maxy miny))))
(define q1 (sqrt (+ (* maxx maxx) (* maxy maxy))))
(define q2 (sqrt (+ (* minx minx) (* maxy maxy))))
(define q3 (sqrt (+ (* maxx maxx) (* miny miny))))
(define q4 (sqrt (+ (* minx minx) (* miny miny))))

(printf (~r (max mx (max q1 (max q2 (max q3 q4)))) #:precision (= 3)) )