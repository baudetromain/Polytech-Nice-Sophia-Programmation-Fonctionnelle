(define is-in?
  (λ (element lst)
    (cond
      ((null? lst) #f)
      ((pair? lst) (if (is-in? element (car lst))
                       #t
                       (if (is-in? element (cdr lst))
                           #t
                           #f)))
      ((if (equal? element lst)
          #t
          #f)))))