#lang sicp

(#%require "common.scm")

;   Exercise 3.24
;   =============
;   
;   In the table implementations above, the keys are tested for equality
;   using equal? (called by assoc).  This is not always the appropriate
;   test.  For instance, we might have a table with numeric keys in which we
;   don't need an exact match to the number we're looking up, but only a
;   number within some tolerance of it. Design a table constructor
;   make-table that takes as an argument a same-key? procedure that will be
;   used to test "equality" of keys.  Make-table should return a dispatch
;   procedure that can be used to access appropriate lookup and insert!
;   procedures for a local table.
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.24]: http://sicp-book.com/book-Z-H-22.html#%_thm_3.24
;   3.3.3 Representing Tables - p272
;   ------------------------------------------------------------------------

(-start- "3.24")



(--end-- "3.24")

