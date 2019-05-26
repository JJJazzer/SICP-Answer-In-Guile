(define (cc amount coin-values)
  (cond ((= amount 0) 1)
	((or (< amount 0) (no-more? coin-values)) 0)
	(else
	  (+ (cc amount 
		 (except-first-denomination coin-values))
	     (cc (- amount 
		    (first-denomination coin-values))
		 coin-values)))))

(define (first-denomination lst)
  (car lst))
(define (except-first-denomination lst)
  (cdr lst))
(define (no-more? lst)
  (null? lst))
(define us-coins (list 1 50 25 5 10 ))

(display (cc 100 us-coins)) (newline)
