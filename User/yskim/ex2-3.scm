(define (make-segment a b)
  (cons a b))
(define (start-segment x)
  (car x))
(define (end-segment x)
  (cdr x))
(define (point-to-point-size a b)
  (sqrt (+ 
         (square (- (x-point a)
                   (x-point b)))
         (square (- (y-point a)
                   (y-point b))))))  
(define (segment-size s)
  (point-to-point-size (start-segment s)
                       (end-segment s)))
(define (square x)
  (* x x))

(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))

(define (midpoint-segment s)  
  (make-point (+ (x-point (start-segment s))
                 (/ (- (x-point (end-segment s))
                       (x-point (start-segment s)))
                    2))
              (+ (y-point (start-segment s))
                 (/ (- (y-point (end-segment s))
                       (y-point (start-segment s)))
                    2))))
  
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-rect a b)
  (cons a b))
(define (rect-hor r)
  (car r))
(define (rect-ver r)
  (cdr r))
;(define (rect-hor r)
;  (abs (- (x-point (car r))
;          (x-point (cdr r)))))
;(define (rect-ver r)
;  (abs (- (y-point (car r))
;         (y-point (cdr r)))))
(define (rect-area r)
  (* (segment-size (rect-ver r))
     (segment-size (rect-hor r))))
(define (rect-around r)
  (+ (* 
      (segment-size (rect-ver r))
      2)
     (* 
      (segment-size (rect-hor r))
      2)))

