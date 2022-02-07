(define delta
  (λ(a b c)
    (- (* b b) (* 4 a c))))

(define racines
  (λ(a b c)
    (cond
      ((< 0 (delta a b c)) (list (/ (- (- b) (sqrt (delta a b c))) (* 2 a))
                                 (/ (+ (- b) (sqrt (delta a b c))) (* 2 a))))
      ((= 0 (delta a b c)) (list (/ (- b) (* 2 a))))
      (else                (list)))))

(racines 1 2 1)
(racines 1 1 -6)
(racines 1 0 -1)
(racines 1 1 1)