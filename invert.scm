(define (_invert l il)
  [if (pair? l)    
    (_invert (cdr l) (cons (car l) il))
    il
  ]
)

(define (invert l)
  (_invert l '())
)

(invert '(4 3 2 1))
