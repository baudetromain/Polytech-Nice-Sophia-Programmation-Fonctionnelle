(define fizzbuzz
  (λ (min max)
    (if (< min max)
        (begin
          (display (cond
                     ((= 0 (modulo min 15)) "FizzBuzz")
                     ((= 0 (modulo min 5 )) "Buzz")
                     ((= 0 (modulo min 3 )) "Fizz")
                     (else min)))
          (display " ")
          (fizzbuzz (+ 1 min) max)))))

(fizzbuzz 0 20)