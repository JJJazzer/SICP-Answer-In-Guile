(define (accumulate op init seq)
  (if (null? seq)
    init
    (op (car seq) 
	(accumulate op init (cdr seq)))))
(define (square x)
  (* x x))
(display (accumulate + 0 (list 1 2 3))) (newline)
(display (accumulate * 1 (list 1 2 3))) (newline)
(display (accumulate cons #nil (map square (list 1 2 3)))) (newline)

(define (map p seq)
  (accumulate (lambda(x y) (cons (p x) y)) '() seq))

(display (map square (list 1 2 3))) (newline)

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))
(display (append (list 1 2) (list 3 4))) (newline)

(define (length seq)
  (accumulate (lambda(x y) (+ 1 y)) 0 seq))

(display (length (list 1 2 3 4))) (newline)
