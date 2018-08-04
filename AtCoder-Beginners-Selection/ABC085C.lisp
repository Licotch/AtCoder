;;;; ABC085C - Otoshidama
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc085_c

;;;;   Time: 65ms
;;;; Memory: 6500KB

(let ((n (read))
      (y (read))
      (ans '(-1 -1 -1)))
  (loop named outer
        for 1man upto n
        do (loop for 5sen upto (- n 1man)
                 for 1sen = (- n 1man 5sen)
                 do (when (= y (+ (* 10000 1man) (* 5000 5sen) (* 1000 1sen)))
                      (setq ans (list 1man 5sen 1sen))
                      (return-from outer))))
  (format t "~{~A~^ ~}~%" ans))
