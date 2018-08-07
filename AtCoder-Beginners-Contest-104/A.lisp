;;;; A - Rated for Me
;;;; https://beta.atcoder.jp/contests/abc104/tasks/abc104_a

;;;;   Time: 8ms
;;;; Memory: 3176KB

(let ((rate (read)))
  (cond
    ((< rate 1200) (princ "ABC"))
    ((< rate 2800) (princ "ARC"))
    (t (princ "AGC"))))
