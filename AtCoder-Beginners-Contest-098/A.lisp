;;;; A - Add Sub Mul
;;;; https://beta.atcoder.jp/contests/abc098/tasks/abc098_a

(let ((a (read))
      (b (read)))
  (princ (max (+ a b) (- a b) (* a b))))
