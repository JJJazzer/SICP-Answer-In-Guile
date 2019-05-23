(define (make-rat x y)
  (let ((g (gcd (abs x) (abs y))))
  (cond ((or (and (< x 0) (< y 0)) 
	     (and (> x 0) (< y 0))) (cons (/ (- 0 x) g) (/ (- 0 y) g)))
	(else (cons (/ x g) (/ y g))))))

(define (abs x)
  (if (< x 0)
    (- 0 x)
    x))

(define number car)
(define denom cdr)

(define (print-rat x)
  (newline)
  (display (number x))
  (display "/")
  (display (denom x)))

(define (gcd x y)
  (if (= y 0)
    x
    (gcd y (remainder x y))))

(begin (display (print-rat (make-rat 1 2))) (newline))
(begin (display (print-rat (make-rat -1 2))) (newline))
(begin (display (print-rat (make-rat -1 -2))) (newline))
(begin (display (print-rat (make-rat 1 -2))) (newline))
(begin (display (print-rat (make-rat -2 4))) (newline))
(begin (display (print-rat (make-rat 2 4))) (newline))
(begin (display (print-rat (make-rat 16 36))) (newline))
(begin (display (print-rat (make-rat 16 -36))) (newline))
