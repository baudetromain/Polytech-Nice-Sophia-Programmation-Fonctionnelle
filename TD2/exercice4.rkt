(define milieu
  (lambda (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst)
       (if (> (length lst) 1)
           (reverse (cdr (reverse (cdr lst))))
           '()))
      (else (error "milieu: bad list")))))

(define swap
  (lambda (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst) (append (list (car (reverse lst))) (milieu lst) (list (car lst))))
      (else (error "swap: bad list")))))