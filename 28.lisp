(defun lsort (src)
  (sort src
    (lambda (a b) 
      (if (< (list-length a) 
             (list-length b)) 
        t 
        nil)))) 
 
