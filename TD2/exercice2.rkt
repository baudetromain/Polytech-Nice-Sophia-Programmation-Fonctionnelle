(define rotation-gauche
  (lambda (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst) (append (cdr lst) (list (car lst))))
      (else (error "rotation-gauche: bad list")))))

(define rotation-droite
  (lambda (lst)
    (cond
      ((null? lst) lst)
      ((pair? lst) (append (list (car (reverse lst))) (reverse (cdr (reverse lst)))))
      (else (error "rotation-droite: bad list")))))