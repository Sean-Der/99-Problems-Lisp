(defun remove-at (src-list which-element &optional (dest-list nil))
    (cond 
        ((equal src-list nil) dest-list) 
        ((equal which-element 1) (remove-at (cdr src-list) 0 dest-list)) 
        (t (remove-at (cdr src-list) (- which-element 1) (append dest-list `(,(car src-list))) ))))
