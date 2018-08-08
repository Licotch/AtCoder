;;;; B - Stone Monument
;;;; https://beta.atcoder.jp/contests/abc099/tasks/abc099_b

(let ((a (read))
      (b (read)))
  (princ (- (loop for i from 1 upto (- b a) sum i) b)))
