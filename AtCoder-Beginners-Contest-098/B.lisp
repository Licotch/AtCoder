;;;; B - Cut and Count
;;;; https://beta.atcoder.jp/contests/abc098/tasks/abc098_b

(defun duplicate-char-counter (str separator)
  (labels ((duplicate-char-counter (char-list cnt)
             (if char-list
                 (duplicate-char-counter (cdr char-list)
                                         (if (find (car char-list) str :start separator :test #'char=)
                                             (1+ cnt)
                                             cnt))
                 cnt)))
    (let ((char-list (coerce (remove-duplicates (subseq str 0 separator)) 'list)))
      (duplicate-char-counter char-list 0))))

(princ (loop for separator from 1 upto (1- (read))
             with input-str = (read-line)
             maximize (duplicate-char-counter input-str separator)))
