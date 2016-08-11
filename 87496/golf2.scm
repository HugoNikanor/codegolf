(define(t d e)(if(= e 27)(apply string-append(map list->string(append(reverse(cdr d))d)))(t(cons(let((a(map integer->char(iota e #x41))))(append a(cdr(reverse a))'(#\newline)))d)(1+ e))))
