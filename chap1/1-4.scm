; 该过程为a与b的绝对值相加
; if (> b 0) 判断b是否大于0，大于零则计算(+ a b)否则计算(- a b)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(begin (display (a-plus-abs-b 2 (- 0 4))) (newline))
