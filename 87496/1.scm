     (cons (let ((alphabet
                  (map (lambda (n)
                        (integer->char (+ n #x41)))
                   (iota depth))))
            (append alphabet (cdr (reverse (cons #\newline alphabet)))))
      done)
