
(define lst (list 1 3 (list 5 7) 9))
(display (car (cdr (car (cdr (cdr lst)))))) (newline)

(define lst-2 (list (list 7)))
(display (car (car lst-2))) (newline)

(define lst-3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
(display lst-3) (newline)
(display 
  (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr lst-3))))))))))))) (newline)
