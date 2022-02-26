(define remove-if
  (λ (func lst)
    (if (list? lst)
        (if (null? lst)
            lst
            (if (func (car lst))
                (remove-if func (cdr lst))
                (cons (car lst) (remove-if func (cdr lst)))))
        (error "bad list"))))

(define count-if
  (λ (func lst)
    (if (list? lst)
        (if (null? lst)
            0
            (if (func (car lst))
                (+ 1 (count-if func (cdr lst)))
                (count-if func (cdr lst))))
        (error "bad list"))))

(define find-if
  (λ (func lst)
    (if (list? lst)
        (if (null? lst)
            #f
            (if (func (car lst))
                (car lst)
                (find-if func (cdr lst))))
        (error "bad list"))))

(define remove-if-not
  (λ (func lst)
    (remove-if (λ (x) (not (func x))) lst)))