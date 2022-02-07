(define dérivée
  (λ(f)
    (λ (x dx)
      (/ (- (f (+ x dx)) (f x)) dx))))

(define carre (lambda (n) (* n n)))
(define d-carre (dérivée carre))
(d-carre 3 0.001)

(define dérivée2
  (λ(f dx)
    (λ (x)
      (/ (- (f (+ x dx)) (f x)) dx))))

(define d-carre2 (dérivée2 carre 0.001))
(d-carre2 3)