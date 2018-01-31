;https://www.hackerrank.com/challenges/cut-the-sticks/problem/

#lang racket

(define num (read))
(define lis (sort (for/list ([i (in-range 0 num)]) (read)) <))
(define min (list-ref lis 0))
(define pcount 0)
(define (check lis)
  (set! pcount 0)
  (for ([i (in-range 0 (length lis))])
    (cond [(positive? (list-ref lis i))(set! pcount (add1 pcount))]))
  )

(define (sub x) (- x min))

(for ([i (in-naturals)])(check lis)
 #:break (= 0 pcount)
  (set! min 0)
  (println (length (filter positive? lis)))
  (set! min (list-ref (filter positive? lis) 0))
  (set! lis (map sub lis))
)