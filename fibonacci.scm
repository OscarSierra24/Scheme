;iterative and recursive fibonacci implementation in Scheme

(define (fibonacciR n)
       (cond
         [(or (= n 0) (= n 1)) 1]
         [else (+ (fibonacciR (- n 1)) (fibonacciR (- n 2)))]
       )  
)

(define (_fibonacciI i n fibOld fibNew)
  (if (< i n) 
    (_fibonacciI (+ i 1) n fibNew (+ fibOld fibNew))
    (+ fibOld fibNew)
  )
)

(define (fibonacciI n)
  (cond
    [(or (= n 1) (= n 0)) 1]
    [else (_fibonacciI 2 n 1 1)]
  )  
)


;(fibonacciI 5)
(fibonacciR 5)
