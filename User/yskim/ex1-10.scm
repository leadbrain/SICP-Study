(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
(A 2 4)
(A 3 3)

(define (f n) (A 0 n))
;=> f(n) = 2n
(define (f n) (* 2 n))

(define (g n) (A 1 n))
;=> g(n) = 2^n
(define (g n) (expo 2 n))

(define (expo x n)
  (if (= n 0)
      1
      (* x (expo x (- n 1)))))

(define (h2 n) (A 2 n))
;=> h(n) = 2^h(n-1)
(define (h n) 
  (cond ((= n 1) 2)
        ((= n 0) 2)
        (else (expo 2 (h (- n 1))))))

(define (k n) (* 5 n n))
;=> k(n) = 5n^2