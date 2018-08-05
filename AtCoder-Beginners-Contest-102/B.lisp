;;;; B - Maximum Difference
;;;; https://beta.atcoder.jp/contests/abc102/tasks/abc102_b

;;;;   Time: 61ms
;;;; Memory: 6116KB

(read) ; Drop the N

(let ((data (read-from-string (concatenate 'string "(" (read-line) ")"))))
  (princ (- (apply #'max data)
            (apply #'min data))))
