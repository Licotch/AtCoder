;;;; B - インタラクティブ練習（Interactive Sorting）
;;;; https://beta.atcoder.jp/contests/practice/tasks/practice_2

;;;;   Time: 35ms
;;;; Memory: 8884KB

(defun get-question ()
  (list (read) (read)))

(defun post-query (label1 label2)
  (format t "? ~A ~A~%" label1 label2)
  (finish-output))

(defun get-ans ()
  (read))

(defun post-ans (ans)
  (format t "! ~{~A~}~%" ans)
  (finish-output))

(defun init-balls (max)
  (loop with a = (char-code #\A)
        for i below max
        collect (intern (string (code-char (+ a i))))))

(defun weight< (ball1 ball2)
  (post-query ball1 ball2)
  (eq '< (get-ans)))

(defun merge-sort (sequence)
  (let ((split (floor (length sequence) 2)))
    (if (zerop split)
        (copy-seq sequence)
        (merge 'list
               (merge-sort (subseq sequence 0 split))
               (merge-sort (subseq sequence split))
               #'weight<))))

(defun swap-balls (balls n1 n2)
  (rotatef (nth n1 balls) (nth n2 balls)))

(defun sort-5balls (balls)
  (if (weight< (nth 1 balls) (nth 0 balls))
      (swap-balls balls 1 0))
  (if (weight< (nth 3 balls) (nth 2 balls))
      (swap-balls balls 3 2))
  (if (weight< (nth 2 balls) (nth 0 balls))
      (progn (swap-balls balls 2 0)
             (swap-balls balls 3 1)))
  (let ((a (nth 0 balls))
        (b (nth 1 balls))
        (c (nth 2 balls))
        (d (nth 3 balls))
        (e (nth 4 balls)))
    (if (weight< c e)
        (if (weight< d e)
            (if (weight< d b)
                (if (weight< e b)
                    (list a c d e b)
                    (list a c d b e))
                (if (weight< b c)
                    (list a b c d e)
                    (list a c b d e)))
            (if (weight< e b)
                (if (weight< d b)
                    (list a c e d b)
                    (list a c e b d))
                (if (weight< b c)
                    (list a b c e d)
                    (list a c b e d))))
        (if (weight< e a)
            (if (weight< c b)
                (if (weight< d b)
                    (list e a c d b)
                    (list e a c b d))
                (list e a b c d))
            (if (weight< c b)
                (if (weight< d b)
                    (list a e c d b)
                    (list a e c b d))
                (if (weight< b e)
                    (list a b e c d)
                    (list a e b c d)))))))

(let ((balls (init-balls (car (get-question)))))
  (post-ans (if (= (length balls) 5)
                (sort-5balls balls)
                (merge-sort balls))))
