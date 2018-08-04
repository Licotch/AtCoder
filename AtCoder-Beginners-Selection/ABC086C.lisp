;;;; ABC086C - Traveling
;;;; https://beta.atcoder.jp/contests/abs/tasks/arc089_a

;;;;   Time: 503ms
;;;; Memory: 57828KB

(let ((pre-t 0)
      (pre-x 0)
      (pre-y 0)
      (ans t))
  (loop for n below (read)
        for cur-t = (- (read) pre-t)
        for cur-x = (- (read) pre-x)
        for cur-y = (- (read) pre-y)
        when ans
          do (progn (if (or (> (+ cur-x cur-y) cur-t)
                            (not (eq (oddp (+ cur-x cur-y)) (oddp cur-t))))
                        (setq ans nil))
                    (setq pre-t cur-t)
                    (setq pre-x cur-x)
                    (setq pre-y cur-y)))
  (if ans
      (princ "Yes")
      (princ "No")))
