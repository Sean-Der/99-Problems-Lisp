(defun slice (orig-list start stop &optional (cur 1) (new-list '()))
  (if (> cur stop)
      new-list
      (if (< cur start)
	  (slice (cdr orig-list) start stop (+ cur 1) new-list)
	  (slice (cdr orig-list) start stop (+ cur 1) (append new-list `(,(car orig-list)))))))
