(define Pair?
  (λ(n)
    (if (= n 0) #t (Impair? (- n 1)))))

(define Impair?
  (λ(n)
    (if (= n 0) #f (Pair? (- n 1)))))

(Pair? 0)
(Impair? 1)
(Impair? 1234)