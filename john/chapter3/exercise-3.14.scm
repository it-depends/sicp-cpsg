#lang sicp

(#%require "common.scm")

;   Exercise 3.14
;   =============
;   
;   The following procedure is quite useful, although obscure:
;   
;   (define (mystery x)
;     (define (loop x y)
;       (if (null? x)
;           y
;           (let ((temp (cdr x)))
;             (set-cdr! x y)
;             (loop temp x))))
;     (loop x '()))
;   
;   Loop uses the "temporary" variable temp to hold the old value of the cdr
;   of x, since the set-cdr! on the next line destroys the cdr.  Explain
;   what mystery does in general.  Suppose v is defined by (define v (list
;   'a 'b 'c 'd)). Draw the box-and-pointer diagram that represents the list
;   to which v is bound.  Suppose that we now evaluate (define w (mystery
;   v)). Draw box-and-pointer diagrams that show the structures v and w
;   after evaluating this expression.  What would be printed as the values
;   of v and w ?
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.14]: http://sicp-book.com/book-Z-H-22.html#%_thm_3.14
;   3.3.1 Mutable List Structure - p256
;   ------------------------------------------------------------------------

(-start- "3.14")
(prn "
Mystery reverses a list.

Before:

v->  [.|.] - [.|.] - [.|.] - [.|/]
      |       |       |       |    
     'a      'b      'c      'd


After:
                             'v'
                              |
                              v

w->  [.|.] - [.|.] - [.|.] - [.|/]
      |       |       |       |    
     'd      'c      'b      'a
")
(--end-- "3.14")

