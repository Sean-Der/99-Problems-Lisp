(defun compress (orig-list &optional (new-list '()) (last-element nil))
  (if (equal orig-list '())
    new-list
    (if (equal (car orig-list) last-element)
      (compress  (cdr orig-list) new-list last-element)
      (compress  (cdr orig-list) (append new-list (list (car orig-list))) (car orig-list)))))
