;;;; A - Eating Symbols Easy
;;;; https://beta.atcoder.jp/contests/abc101/tasks/abc101_a

(princ (apply #'+ (mapcar (lambda (predicate)
                            (eval `(,(intern predicate) 0 1)))
                          (map 'list #'string (read-line)))))
