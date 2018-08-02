;;;; ABC087B - Coins
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc087_b

;;;;   Time: 15ms
;;;; Memory: 3920KB

(let ((A (read))
      (B (read))
      (C (read))
      (X (read))
      (n 0))
  (loop for 500n upto A do
    (loop for 100n upto B do
      (loop for 50n upto C
            when (= X (+ (* 500n 500)
                         (* 100n 100)
                         (* 50n  50)))
              do (incf n))))
  (princ n))
