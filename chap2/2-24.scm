(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else (+ (count-leaves (car x))
		 (count-leaves (cdr x))))))


(display (count-leaves (cons (list 1 2) (list 3 4)))) (newline)
(display (count-leaves (list 1 (list 2 (list 3 4))))) (newline)
(display (count-leaves (list 1 2 3 4))) (newline)
