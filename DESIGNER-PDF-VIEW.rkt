;https://www.hackerrank.com/challenges/designer-pdf-viewer/problem/

#lang racket

(define lis1 (string-split (read-line)))
(set! lis1 (map (lambda (x) (string->number x)) lis1))

(define word (read-line))
(define lisorder (list ))

(for ([i (in-range 0 (string-length word))])
  (set! lisorder (flatten (list (append lisorder (- (char->integer (string-ref word i)) 96))))))
(define main (list ))
(for ([i (in-range 0 (length lisorder))])
  (set! main (flatten (list (append main (list-ref lis1 (- (list-ref lisorder i) 1)))))))

(set! main (sort main >))
(println (* (list-ref main 0) (string-length word)))