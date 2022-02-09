(define entiers
  (λ (lst)
    (cond
      ((null? lst) 0)
      ((pair? lst) (+ (entiers (car lst)) (entiers (cdr lst))))
      (else (if (integer? lst)
                1
                0)))))