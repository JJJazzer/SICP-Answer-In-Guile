(define (reverse lst)
  (define (rev-append lst rlst)
    (if (null? lst)
      rlst
      (rev-append (cdr lst) (cons (car lst) rlst))))
  (rev-append lst '()))

(display (reverse (list 1 4 9 16 25))) (newline)
