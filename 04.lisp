(defun lists-length (search-list &optional (cur-number 0))
  (if (equal (car search-list) nil) 
    cur-number
    (lists-length (cdr search-list) (+ cur-number 1))))
