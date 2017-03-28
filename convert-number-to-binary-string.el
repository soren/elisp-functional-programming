(defun twonky-binary (number)
  "Convert integer to binary string representation"
  (if (or (= number 0) (= number 1))
    (number-to-string number)
    (concat (twonky-binary (lsh number -1)) (number-to-string (mod number 2)))))

(mapcar
  (lambda (n) (princ (format "%d\t%s\n" n (twonky-binary n))))
  (sort (list 0 45 2 255 1) '<))

