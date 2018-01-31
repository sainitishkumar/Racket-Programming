;https://www.hackerrank.com/challenges/the-time-in-words/problem/

#lang racket

(define hrs (read))
(define min (read))

(define lis '(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty))
(cond [(and (not (= min 0))(not (= min 1)))(cond [(and (and (> min 30) (< (- 60 min) 21)) (not (= 45 min))) (printf "~s minutes to " (list-ref lis (- 60 min)))(printf "~a\n" (list-ref lis (add1 hrs)))]
      [(and (and (> min 30) (>= (- 60 min) 21))(not (= 45 min))) (printf "twenty ~s minutes to " (list-ref lis (modulo (- 60 min) 20)))(printf "~a\n"(list-ref lis (add1 hrs)))]
      [(and (and (< min 30) (not (= min 15))) (< min 21))(printf "~s minutes past " (list-ref lis min))(printf "~a\n" (list-ref lis hrs))]
      [(and (and (< min 30) (not (= min 15))) (>= min 21))(printf "twenty ~s minutes past " (list-ref lis (modulo min 20)))(printf "~a\n" (list-ref lis hrs))]
      [(= min 45)(printf "quarter to ~s\n"(list-ref lis (add1 hrs)))]
      [(= min 15)(printf "quarter past ~s\n"(list-ref lis hrs))]
      [(= min 30)(printf "half past ~s\n"(list-ref lis hrs))])]
      [(= min 0) (printf "~s o' clock" (list-ref lis hrs))]
      [(= min 1)(printf "one minute past ~s\n"(list-ref lis hrs))])