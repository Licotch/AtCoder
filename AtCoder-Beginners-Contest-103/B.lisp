;;;; B - String Rotation
;;;; https://beta.atcoder.jp/contests/abc103/tasks/abc103_b

;;;;   Time: 31ms
;;;; Memory: 4836KB

(defmacro alambda (parms &body body)
  `(labels ((self ,parms ,@body))
     #'self))

(let ((str1 (read-line))
      (str2 (read-line)))
  (labels ((string-rotate (str)
             (concatenate 'string (subseq str 1) (subseq str 0 1))))
    (if (funcall (alambda (str1 str2 n)
                       (if (string= str1 str2)
                           t
                           (if (zerop n)
                               nil
                               (self (string-rotate str1) str2 (1- n)))))
                 str1 str2 (length str1))
        (princ "Yes")
        (princ "No"))))
