;;;; ABC081B - Shift only
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc081_b

;;;;   Time: 16ms
;;;; Memory: 6500KB

(labels ((read-line-as-sexp ()
           (read-from-string (concatenate 'string "(" (read-line) ")")))
         (sunuke-task (num-list cnt)
           (if (some #'oddp num-list)
               cnt
               (sunuke-task (mapcar #'(lambda (num) (/ num 2)) num-list)
                            (1+ cnt)))))
  (read)
  (princ (sunuke-task (read-line-as-sexp) 0)))
