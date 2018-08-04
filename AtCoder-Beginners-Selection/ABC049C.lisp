;;;; ABC049C - 白昼夢 / Daydream
;;;; https://beta.atcoder.jp/contests/abs/tasks/arc065_a

;;;;   Time: 1373ms
;;;; Memory: 92532KB

(defun remove-word (str word)
  (let ((word-len (length word)))
    (labels ((remove-word (str acc)
               (let ((subst-point (search word str)))
                 (if subst-point
                     (remove-word (subseq str (+ subst-point word-len))
                                  (concatenate 'string acc (subseq str 0 subst-point)))
                     (concatenate 'string acc str)))))
      (remove-word str ""))))

(defun remove-words (str word &rest more-words)
  (reduce #'remove-word `(,str ,word ,@more-words)))

(if (string= "" (remove-words (read-line)
                              "eraser"
                              "erase"
                              "dreamer"
                              "dream"))
    (princ "YES")
    (princ "NO"))
