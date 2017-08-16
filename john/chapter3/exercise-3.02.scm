#lang sicp

(#%require "common.scm")

;   Exercise 3.2
;   ============
;   
;   In software-testing applications, it is useful to be able to count the
;   number of times a given procedure is called during the course of a
;   computation.  Write a procedure make-monitored that takes as input a
;   procedure, f, that itself takes one input.  The result returned by
;   make-monitored is a third procedure, say mf, that keeps track of the
;   number of times it has been called by maintaining an internal counter. 
;   If the input to mf is the special symbol how-many-calls?, then mf
;   returns the value of the counter.  If the input is the special symbol
;   reset-count, then mf resets the counter to zero.  For any other input,
;   mf returns the result of calling f on that input and increments the
;   counter.  For instance, we could make a monitored version of the sqrt
;   procedure:
;   
;   (define s (make-monitored sqrt))
;   
;   (s 100)
;   10
;   
;   (s 'how-many-calls?)
;   1
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.2]:  http://sicp-book.com/book-Z-H-20.html#%_thm_3.2
;   3.1.1 Local State Variables - p224
;   ------------------------------------------------------------------------

(-start- "3.2")

(define (sqrt x) (expt x 1/2))

(define (make-monitored f)
  (let ((count 0))
    (lambda (a)
      (cond
       ((eq? a 'how-many-calls?) count)
       ((eq? a 'reset-count) (set! count 0))
       (else (set! count (+ count 1))
             (f a))))))

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)

(--end-- "3.2")

