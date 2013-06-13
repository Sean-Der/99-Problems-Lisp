(defun split (orig-list length &optional (head-list '()) (cur-index 0))
  (if (equal length cur-index)
      `(,head-list ,orig-list)
      (split (cdr orig-list)
	     length
	     (append head-list `(,(car orig-list)))
	     (+ cur-index 1))))
