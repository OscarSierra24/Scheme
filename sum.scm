;this program adds all the elements of a list and returns the result of the addition (this include lists of lists)
;Note: it does not evaluates if the list elements are numbers, this is an intentional design decision since I considered
;that wrong input should be handled by a scheme exception 

(define (_sum list result)
      (if (null? list)
           result
           (if (pair? (car list))
                 (_sum (cdr list) (+ result (_sum (car list) 0)))
                 (if (pair? list)
                      (_sum (cdr list) (+ (car list) result))
                      result      
                 )
           )
      )
)

(define (sum list)
  (_sum list 0)
)
