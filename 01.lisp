(defun my-last (box)
  (if (cdr box) 
    (my-last (cdr box)) 
    box))
