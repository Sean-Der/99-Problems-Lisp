(defun my-but-last (box)
  (if (cdr (cdr box)) 
    (my-but-last (cdr box)) 
    box))
