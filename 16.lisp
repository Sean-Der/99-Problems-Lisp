(defun drop (orig-list drop-nth &optional (new-list nil) (cur-nth 1))
  (if orig-list
      (drop (cdr orig-list)
	    drop-nth
	    (if (equal cur-nth drop-nth)
		new-list
		(append new-list `(,(car orig-list))))
	    (if (equal cur-nth drop-nth)
		1
		(+ cur-nth 1)))
      new-list))
