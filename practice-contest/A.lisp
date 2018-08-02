(defun sumn (num)
  (if (zerop num)
      0
      (+ (read) (sumn (1- num)))))

(format t "~A ~A~%" (sumn 3) (read-line))
