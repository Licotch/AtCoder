;;;; ABC085B - Kagami Mochi
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc085_b

;;;;   Time: 18ms
;;;; Memory: 4068KB

(princ (length (remove-duplicates (loop for i below (read) collect (read)))))
