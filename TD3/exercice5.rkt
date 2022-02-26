(define (iota n f)
  (cond
    ((>= 0 n) ())
    (else (append (iota (- n 1) f) (list (f (- n 1)))))))

(define (new-list n . f)
  (iota n (cond
            ((null? f) (λ (x) x))
            ((procedure? (car f)) (λ (x) ((car f) x)))
            (else (λ (x) (car f))))))