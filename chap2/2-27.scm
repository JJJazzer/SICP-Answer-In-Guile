(define (reverse lst)
  (define (helper lst newlst)
   (cond ((null? lst) newlst)
	 ((not (pair? (car lst)))
	  (helper (cdr lst) (cons (car lst) newlst)))
	 (else 
	   (helper (cdr lst) (cons (helper (car lst) '()) newlst)))))
  (helper lst '()))

(display (reverse (list (list 1 2) (list 3 4)))) (newline)
(display (reverse (list 1 2 3 4))) (newline)
(display (reverse (list 1 (list 2 (list 3 4))))) (newline)
