;;;; A - Multiple of 2 and N
;;;; https://beta.atcoder.jp/contests/abc102/tasks/abc102_a

;;;;   Time: 21ms
;;;; Memory: 3812KB

(let ((n (read)))
  (declare (fixnum n)
           (optimize (safety 0) (speed 3) (debug 0)))
  (princ (if (zerop (rem n 2))
             n
             (* 2 n))))
