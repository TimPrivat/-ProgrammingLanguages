(define (meanarith x y) (/ (+ x y) 2.0))
(define (swapheads x) (append (list (car(cdr x)) (car x)) (cdr(cdr x))))

(define (compare3diff x y)
  (cond
    ((and (null? (cdddr x))
          (null? (cddr y))
          (or (= (car y) (- (car x) (cadr x)))
              (= (car y) (- (cadr x) (car x)))
          )
          (or (= (cadr y) (- (cadr x) (caddr x)))
              (= (cadr y) (- (caddr x) (cadr x)))
          )
    ) #t)
    (else #f)
    )

 )
 
(define (quadeqpq a b c) 
  (let (
      (x (sqrt(- (* b b) (* (* 4 a) c))))
      (y (* 2 a))
      )      
  
    (list  (/ (+ (- b) x) y) (/ (- (- b) x) y)) 
  
  )
  )


(define (countin e lst)(
  cond ((null? lst) 0)
       ((equal? e (car lst)) (+ 1 (countin e (cdr lst))))
       (else (countin e (cdr lst))) 
   )
)


(define (fact-e n)
  (cond ((zero? n) 1)
        (else      (* n (fact-e (- n 1))))))

(define (fact n)
  (letrec
      ((rec
        (lambda (n acc)
          (cond ((zero? n) acc)
                (else      (rec (- n 1)
                                (* n acc)))))))
    (rec n 1)))

(define (countin-t e lst acc)(
  cond ((null? lst) acc)
       ((equal? e (car lst))  (countin-t e (cdr lst) (+ 1 acc)))
       (else (countin-t e (cdr lst) acc)) 
   )
)
