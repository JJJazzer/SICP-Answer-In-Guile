;递归:
(define (fn x)
  (cond ((< x 3) x)
	(else (+ (fn (- x 1))
		  (* 2 (fn (- x 2)))
		  (* 3 (fn (- x 3)))))))

;迭代:
(define (fn-iter x)
  (fn-iter-proc 2 1 0 x))
(define (fn-iter-proc a b c count)
  (cond ((= count 0) c)
	((= count 1) b)
	((= count 2) a)
    	(else 
	  (fn-iter-proc (+ a (* 2 b) (* 3 c)) a b (- count 1)))))


(begin (display (fn 10)) (newline))
(begin (display (fn-iter 10)) (newline))
