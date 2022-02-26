(define add2 (λ (a b) (+ a b)))

(define add
  (λ lst
    (cond
      ((null? lst) 0)
      ((pair? lst) (add2 (car lst) (apply add (cdr lst)))))))