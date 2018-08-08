;;;; B - Ringo's Favorite Numbers
;;;; https://beta.atcoder.jp/contests/abc100/tasks/abc100_b

(let ((d (read))
      (n (read)))
  (princ (* (+ n (floor (1- n) 99)) (expt 100 d))))
