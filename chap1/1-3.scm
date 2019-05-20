(define (get-2val-sum-of-max x y z)
  (cond ((and (< x y) (< x z)) (+ y z))
	((and (< y x) (< y z)) (+ x z))
	((and (< z x) (< z y)) (+ x y))))

(begin (display (get-2val-sum-of-max 4 2 5)) (newline))
