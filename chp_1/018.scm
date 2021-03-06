(define (dbl a)
  (* a 2))
(define (hlf a)
  (/ a 2))

(define (mul a b)
  (define (mul-iter a b result)
    (cond ((= b 0) result)
          ((even? b) (mul-iter (dbl a) (hlf b) result))
          (else (mul-iter a (- b 1) (+ result a)))))
  (mul-iter a b 0))
