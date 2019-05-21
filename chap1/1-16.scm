; recursive
; formula: (b ^ n/2)^2
(define (fast-expt-rec b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt-rec b (/ n 2))))
	(else (* b (fast-expt-rec b (- n 1))))))
(define (square n) (* n n))

(begin (display (fast-expt-rec 2 10)) (newline))
(begin (display (fast-expt-rec 2 11)) (newline))

; iterate
; formula: (b ^ 2)^n/2

(define (fast-expt-iter b n)
  (fast-expt b n 1))
(define (fast-expt b n product)
  (cond ((= n 0) product)
	((even? n) (fast-expt (square b) (/ n 2) product))
	(else (fast-expt b (- n 1) (* b product)))))

(begin (display (fast-expt-iter 2 10)) (newline))
(begin (display (fast-expt-iter 2 11)) (newline))
