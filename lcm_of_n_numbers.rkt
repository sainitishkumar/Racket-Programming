#lang racket

(define (lcm-n i n acc)
  (if (= i n)
      acc
      (lcm-n (+ i 1) n (lcm (read) acc))))

(lcm-n 0 (read) 1)