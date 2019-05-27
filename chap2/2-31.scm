(define (tree-map func tree)
  (cond ((null? tree) '())
	((not (pair? tree)) (func tree))
	(else
	  (cons (tree-map func (car tree))
		(tree-map func (cdr tree))))))
(define (square x) (* x x))
(define (square-tree tree) (tree-map square tree))
(display (square-tree (list 1 2 3 4))) (newline)
