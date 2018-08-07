;;;; B - AcCepted
;;;; https://beta.atcoder.jp/contests/abc104/tasks/abc104_b

;;;;   Time: 16ms
;;;; Memory: 3936KB

(let ((s (read-line)))
  (princ (if (and (char= (char s 0) #\A)
                  (= 1 (count #\C s :start 2 :end (1- (length s)) :test #'char=))
                  (not (some #'upper-case-p
                             (remove #\C (subseq s 1) :test #'char= :count 1))))
             "AC"
             "WA")))
