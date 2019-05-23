; 应用序会无限循环，边求值参数边应用

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))
; 正则序会输出0
