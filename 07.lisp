(defun my-flatten (cur-list) 
  (dolist (x cur-list) 
  (if (listp x) 
    (my-flatten x) 
    (print x))))

