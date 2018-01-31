#lang racket


(define n (read-line))
(define lis (list ))
(define sumlist (list ))
(set! n (string->number n))

(for ([i (in-range 0 n)])
  (set! lis (flatten (list (append lis (read))))))

(define (power-set set)
 (if (null? set) '(())
    (let ((power-set-of-rest (power-set (cdr set))))
      (append power-set-of-rest (map (lambda (subset) (cons (car set) subset)) power-set-of-rest)))))


(set! sumlist (power-set lis))
(define dummylist (list ))

(define dum 0)
(define (sum lis)
  (for ([i (in-range 0 (length lis))])
    (set! dum (+ dum (list-ref lis i))))
  (set! dummylist (flatten (list (append dummylist dum))))
  (set! dum 0))

(for ([i (in-range 1 (length sumlist))])
  (sum (list-ref sumlist i)))

(define dummy 0)
(for ([i (in-range 0 (length dummylist))])
  (set! dummy (+ dummy (expt 2 (list-ref dummylist i)))))

dummy