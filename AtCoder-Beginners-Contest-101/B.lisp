;;;; B - Digit Sums
;;;; https://beta.atcoder.jp/contests/abc101/tasks/abc101_b

(defun s (n)
  (labels ((s (n sum)
             (multiple-value-bind (a b) (floor n 10)
               (if (zerop a)
                   (+ b sum)
                   (s a (+ sum b))))))
    (s n 0)))

(let ((n (read)))
  (princ (if (zerop (rem n (s n)))
             "Yes"
             "No")))
