;;;; B - Stone Monument
;;;; https://beta.atcoder.jp/contests/abc099/tasks/abc099_b

(let ((a (read))
      (b (read)))
  (princ (- (* (- b a) (- b a -1) 1/2) b)))
