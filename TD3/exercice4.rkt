(define (append2 l1 l2)
  (cond
    ((null? l1) l2)
    ((pair? l1) (cons (car l1)
                     (append2 (cdr l1) l2)))
    (else       (error "bad list" l1))))

(define (my-append . lst)
    (cond
      ((null? lst) ())
      ((pair? lst) (append2 (car lst) (apply my-append (cdr lst))))))