; 帕斯卡三角形
(define (pascal row col)
  (if (> col row)
    (error "error row and cols"))
  (if (or (= col 1) (= row col))
    1
    (+ (pascal (- row 1) (- col 1))
       (pascal (- row 1) col))))
(define (ws)
  (display " "))
(begin (display (pascal 4 1)) (ws))
(begin (display (pascal 4 2)) (ws))
(begin (display (pascal 4 3)) (ws))
(begin (display (pascal 4 4)) (ws) (newline))
