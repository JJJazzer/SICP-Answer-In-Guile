(define (my-for-each proc lst)
  (cond ((null? lst) #t)
	(else
	  (proc (car lst))
	  (my-for-each proc (cdr lst)))))

(my-for-each (lambda(x) (display x) (newline))
	     (list 20 23 24))
