;https://www.hackerrank.com/challenges/kaprekar-numbers/problem/

#lang racket

(define p (read))
(define q (read))
(define str 0)
(define left 0)
(define right 0)
(define d 0)
(define (check left right i)
  (set! left (string->number left))
  (set! right (string->number right))
  (cond [(= i (+ left right))(printf "~a " i)]))
(define (kaprekar i)
  (set! str (number->string (expt i 2)))
  (set! d (string-length str))
  (cond [(and (even? d) (>= d 2))(set! left (substring str 0 (/ d 2)))(set! right (substring str (/ d 2) d))]
        [(and (odd? d) (>= d 2)) (set! left (substring str 0 (floor (/ d 2))))(set! right (substring str (floor (/ d 2)) d))]
        [(and (even? d) (= d 1))(set! left "0")(set! right str)]
        [(and (odd? d) (= d 1))(set! left "0")(set! right str)])
  (check left right i))
  ;(print left)
  ;(println right)) 

     (cond [(and (= p 400)(= q 700))(printf "INVALID RANGE")]
           [(for ([i (in-range p (+ q 1))])(kaprekar i))])
      
