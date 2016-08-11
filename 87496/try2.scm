(define (triangle done depth)
  (if (= depth 27)
    (apply string-append
     (map list->string
      (append (reverse (cdr done))
              done)))
    (triangle 
     (cons (let ((alphabet (map integer->char (iota depth #x41))))
            (append alphabet (cdr (reverse alphabet)) '(#\newline)))
      done)
    (1+ depth))))

;(triangle '() 1)
