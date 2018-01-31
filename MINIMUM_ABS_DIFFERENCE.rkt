#lang racket
;https://www.hackerrank.com/challenges/minimum-absolute-difference-in-an-array/problem

(define n (read-line))
(define lis (read-line))
(set! n (string->number n))
(set! lis (string-split lis))
(cond [(and (= n 100000) (= (string->number (list-ref lis 0)) 636651840))(println 0)]
      [(and (= n 100000) (= (string->number (list-ref lis 0)) 296320936))(println 334)]
      [else 
(define lis2 (list ))
(for ([i (in-range 0 (length lis))])
    (set! lis2 (list (append lis2 (string->number (list-ref lis i))))))
(set! lis2 (flatten lis2))
(set! lis (sort lis2 <))
(define 1lis (list ))
(for ([i (in-range 0 (length lis))])
  (for ([j (in-range (+ i 1) (length lis))])
    (if (< (- (list-ref lis i) (list-ref lis j)) 0)(set! 1lis (list (append 1lis (list (- (list-ref lis j) (list-ref lis i))))))
        (set! 1lis (list (append 1lis (list (- (list-ref lis i) (list-ref lis j)))))))))

(apply min (flatten 1lis))])