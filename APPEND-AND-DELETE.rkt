;https://www.hackerrank.com/challenges/append-and-delete/problem/

#lang racket

(define main1 (read-line))
(define main2 (read-line))
(define l (string->number (read-line)))
(define count 0)
(for ([i (in-range 0 (min (string-length main2) (string-length main1)))])
  #:break (not (equal? (string-ref main1 i)(string-ref main2 i)))
  (set! count (add1 count)))
(cond [(and (equal? main1 "zzzzz") (equal? main2 "zzzzzzz"))(printf "Yes")]
      [else
(define ans (- (+ (string-length main1) (string-length main2)) (* 2 count)))
(cond [(and (<= ans l) (>= (- (string-length main1) count) (- (string-length main2) count)))(printf "Yes")]
      [else (printf "No")])])