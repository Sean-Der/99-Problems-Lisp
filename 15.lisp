(defun repli (source-list how-many? &optional (new-list nil))
  (if source-list
      (repli (cdr source-list) how-many? (append new-list (make-list how-many? :initial-element (car source-list)))) 
      new-list))
