(define sigma
  (λ (f)
    (define temp
      (λ (n)
        (if (= 0 n) (f 0) (+ (f n) (temp (- n 1))))))
    temp))

(define carré
  (λ (x) (* x x)))

(define somme-carré
  (sigma carré))

(somme-carré 100)