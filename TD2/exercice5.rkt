(define List-ref
  (λ (lst n)
    (cond
      ((null? lst) (error "index too big"))
      ((pair? lst)
       (if (= n 0)
           (car lst)
           (List-ref (cdr lst) (- n 1))))
      (else (error "list-ref: bad list")))))

(define Member
  (λ (val lst)
    (cond
      ((null? lst) #f)
      ((pair? lst)
       (if (equal? val (car lst))
           lst
           (Member val (cdr lst))))
    (else (error "list-ref: bad list")))))