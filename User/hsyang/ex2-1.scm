(define (make-rat n d) 
  (define (abs x)
    (if (< x 0)
        (- x)
        x)) 
  (let ((g (gcd n d)))
  (cons (if (< (/ n d) 0)
            (- (abs (/ n g)))
            (abs (/ n g)))
        (abs (/ d g)))))

(define (number x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (number x))
  (display "/")
  (display (denom x)))

(print-rat (make-rat 2 4))
(print-rat (make-rat -2 4))
(print-rat (make-rat 2 -4))
(print-rat (make-rat -2 -4))