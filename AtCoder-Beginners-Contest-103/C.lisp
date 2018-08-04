;;;; C - Modulo Summation
;;;; https://beta.atcoder.jp/contests/abc103/tasks/abc103_c

;;;;   Time: 39ms
;;;; Memory: 5096KB

(read-line) ; Drop the first line.
(princ
 (apply #'+
        (mapcar #'(lambda (x)
                    (1- x))
                (read-from-string (concatenate 'string "(" (read-line) ")")))))
