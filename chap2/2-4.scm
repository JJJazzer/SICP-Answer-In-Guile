(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))
(define (cdr z)
  (z (lambda (p q) q)))


(begin (display (car (cons 1 2))) (newline))
(begin (display (cdr (cons 1 2))) (newline))

(define (my-cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
	  ((= m 1) y)
	  (else (error "args not 0 or 1 -- CONS" m))))
  dispatch)

(define (my-car z) (z 0))

(begin (display (my-car (my-cons 2 4))) (newline))
