(defun dupli (source-list &optional (new-list nil))
  (if source-list
      (dupli (cdr source-list) (append new-list (make-list 2 :initial-element (car source-list)))) 
      new-list))
