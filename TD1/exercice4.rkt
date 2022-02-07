(define somme-carrés
  (λ (n)
    (sigma (λ (x) (* x x)) n)))

(define somme-cubes
  (λ (n)
    (sigma (λ (x) (* x x x)) n)))

(define sigma
  (λ (f n)
    (if (= n 0) 0 (+ (f n) (sigma f (- n 1))))))

(somme-carrés 100)
(somme-cubes 100)