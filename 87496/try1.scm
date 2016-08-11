(define (triangle done depth)
  (if (= depth 27)
    (apply string-append
     (map list->string
      (append (reverse (cdr done))
              done)))
    (triangle 
     (cons (let ((alphabet
                  (map (lambda (n)
                        (integer->char (+ n #x41)))
                   (iota depth))))
            (append alphabet (cdr (reverse (cons #\newline alphabet)))))
      done)
    (1+ depth))))

;(triangle '() 1)
