(define(t d e)(if(= e 27)(apply string-append(map list->string(append(reverse(cdr d))d)))(t(cons(let((a(map(lambda(n)(integer->char(+ n #x41)))(iota e))))(append a(cdr(reverse(cons #\newline a)))))d)(1+ e))))
