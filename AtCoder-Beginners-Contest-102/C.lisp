;;;; C - Linear Approximation
;;;; https://beta.atcoder.jp/contests/abc102/tasks/arc100_a

;;;;   Time: 622ms
;;;; Memory: 62568KB

(let* ((n (read))
       (b-list (sort (loop for i from 1 upto n collect (- (read) i)) #'<))
       (b (if (oddp n)
              (nth (1- (/ (1+ n) 2)) b-list)
              (floor (+ (nth (1- (floor n 2)) b-list)
                        (nth (floor n 2) b-list))
                     2))))
  (princ (apply #'+ (mapcar #'(lambda (bn) (abs (- bn b))) b-list))))
