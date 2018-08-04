;;;; D - Islands War
;;;; https://beta.atcoder.jp/contests/abc103/tasks/abc103_d

;;;;   Time: 440ms
;;;; Memory: 59752KB

(let* ((land-num (read))
       (request-num (read))
       (lands (make-array (1+ land-num))))
  (loop repeat request-num
        for land1 = (read)
        for land2 = (read)
        do (setf (aref lands land2) (max land1 (aref lands land2))))
  (loop with ans = 0
        for i from 1 upto land-num
        do (and (not (= 0 (aref lands i)))
                (= (aref lands (aref lands i)) ans)
                (incf ans))
           (setf (aref lands i) ans)
        finally (format t "~A~%" ans)))
