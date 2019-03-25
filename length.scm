;custom length function, calculates the length of a list

(define (custom_length list)
      (if (pair? list)
          (+ 1 (custom_length (cdr list)))    
          0
      )  
)
