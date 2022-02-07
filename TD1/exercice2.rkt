(define fib
  (λ(n)
    (cond
      ((= n 0) 0)
      ((= n 1) 1)
      (else (+ (fib(- n 1)) (fib(- n 2)))))))

(fib 25)


(define fact
  (λ(n)
   (if (<= n 1) 1 (* n (fact(- n 1))))))

(fact 50)