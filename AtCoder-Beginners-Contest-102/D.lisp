;;;; D - Equal Cut
;;;; https://beta.atcoder.jp/contests/abc102/tasks/arc100_b

;;;;   Time: 609ms
;;;; Memory: 61800KB

(defun get-sum (data start end)
  (if (zerop start)
      (aref data (1- end))
      (- (aref data (1- end))
         (aref data (1- start)))))

(defun get-diff (data start-point second-point end-point)
  (abs (- (get-sum data second-point end-point)
          (get-sum data start-point second-point))))

(defun equal-cut ()
  (let* ((n (read))
         (data (make-array n :initial-contents (loop repeat n
                                                     sum (read) into summed-a
                                                     collect summed-a))))
    (loop for second-separator from 2 below (1- n)
          with first-separator = 1
          with third-separator = 3
          with minimized-diff = #.(* (* 2 (expt 10 5)) (expt 10 9))
          when (>= second-separator third-separator)
            do (setq third-separator (1+ second-separator))
          do (loop (if (and (< first-separator (1- second-separator))
                            (< (get-diff data 0 (1+ first-separator) second-separator)
                               (get-diff data 0 first-separator second-separator)))
                       (incf first-separator)
                       (return)))
             (loop (if (and (< third-separator (1- n))
                            (< (get-diff data second-separator (1+ third-separator) n)
                               (get-diff data second-separator third-separator n)))
                       (incf third-separator)
                       (return)))
             (let* ((sum-list (list (get-sum data 0 first-separator)
                                    (get-sum data first-separator second-separator)
                                    (get-sum data second-separator third-separator)
                                    (get-sum data third-separator n)))
                    (diff (- (apply #'max sum-list) (apply #'min sum-list))))
               (if (< diff minimized-diff)
                   (setq minimized-diff diff)))
          finally (princ minimized-diff))))

(equal-cut)
