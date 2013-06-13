(defun element-at (search-list k &optional (cur-number 1))
  (if (equal cur-number k) 
    (car search-list)
    (element-at (cdr search-list) k (+ cur-number 1))))
