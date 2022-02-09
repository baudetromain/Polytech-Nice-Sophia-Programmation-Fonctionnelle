(define milieu
  (lambda (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst)
       (if (> (length lst) 1)
           (reverse (cdr (reverse (cdr lst))))
           '()))
      (else (error "milieu: bad list")))))