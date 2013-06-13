(defun list-reverse (orig-list &optional (reversed-list '()))
  (if (equal orig-list nil) 
    reversed-list
    (list-reverse (cdr orig-list) (append (list (car orig-list)) reversed-list))))
