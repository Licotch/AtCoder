;;;; ABC083B - Some Sums
;;;; https://beta.atcoder.jp/contests/abs/tasks/abc083_b

;;;;   Time: 16ms
;;;; Memory: 4200KB

(labels ((sumdig (n sum)
           (if (< n 10)
               (+ sum n)
               (multiple-value-bind (x y) (floor n 10)
                 (sumdig x (+ sum y)))))
         (some-sums (n a b acc)
           (if (zerop n)
               acc
               (let ((sum (sumdig n 0)))
                 (if (and (<= a sum) (>= b sum))
                     (some-sums (1- n) a b (+ acc n))
                     (some-sums (1- n) a b acc))))))
  (princ (some-sums (read) (read) (read) 0)))
