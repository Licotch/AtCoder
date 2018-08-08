;;;; A - Eating Symbols Easy
;;;; https://beta.atcoder.jp/contests/abc101/tasks/abc101_a

;;;;   Time:
;;;; Memory:

(labels ((solver (predicates num)
           (if predicates
               (solver (cdr predicates) (if (char= #\+ (car predicates))
                                            (1+ num)
                                            (1- num)))
               num)))
  (princ (solver (coerce (read-line) 'list) 0)))
