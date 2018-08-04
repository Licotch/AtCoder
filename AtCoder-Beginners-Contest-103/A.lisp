;;;; A - Task Scheduling Problem
;;;; https://beta.atcoder.jp/contests/abc103/tasks/abc103_a

;;;;   Time: 81ms
;;;; Memory: 8800KB

(let ((tasks `(,(read) ,(read) ,(read))))
  (princ (- (apply #'max tasks) (apply #'min tasks))))
