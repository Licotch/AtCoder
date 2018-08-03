;;;; ABC088B - Card Game for Two
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc088_b

;;;;   Time: 12ms
;;;; Memory: 3688KB

(labels ((read-line-as-sexp ()
           (read-from-string (concatenate 'string "(" (read-line) ")")))
         (card-game (cards which-turn point-a point-b)
           (if cards
               (case which-turn
                 ((alice)
                  (card-game (cdr cards) 'bob (+ point-a (car cards)) point-b))
                 ((bob)
                  (card-game (cdr cards) 'alice point-a (+ point-b (car cards)))))
               (- point-a point-b))))
  (read-line) ; Drop the first line
  (princ (card-game (sort (read-line-as-sexp) '>) 'alice 0 0)))
