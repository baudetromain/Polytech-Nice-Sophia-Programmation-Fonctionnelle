(define full-reverse
  (λ (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst) (append
                    (full-reverse (cdr lst))
                    (list (full-reverse (car lst)))))
      (else lst))))