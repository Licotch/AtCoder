;;;; B - Exponential
;;;; https://beta.atcoder.jp/contests/abc097/tasks/abc097_b

(let ((x (read)))
  (princ (if (= 1 x)
             x
             (loop for b from 2 upto (sqrt x)
                   for p = (floor (log x b))
                   maximize (expt b p)))))
