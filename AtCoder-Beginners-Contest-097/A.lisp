;;;; A - Colorful Transceivers
;;;; https://beta.atcoder.jp/contests/abc097/tasks/abc097_a

(let ((a (read))
      (b (read))
      (c (read))
      (d (read)))
  (princ (if (or (<= (abs (- c a)) d)
                 (and (<= (abs (- b a)) d)
                      (<= (abs (- c b)) d)))
             "Yes"
             "No")))
