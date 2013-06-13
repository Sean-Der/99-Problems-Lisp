(defun insert-at (new-symbol src-list which-element &optional (dest-list nil))
    (cond 
        ((equal src-list nil) dest-list) 
        ((equal which-element 1) (insert-at new-symbol (cdr src-list) 0 (append dest-list `(,new-symbol) `(,(car src-list))))) 
        (t (insert-at new-symbol (cdr src-list) (- which-element 1) (append dest-list `(,(car src-list))) ))))
