(defun range (src dst &optional (traveled 1) (new-list nil))
  (cond 
    ((equal (abs (- src dst)) traveled) (append `(,src) new-list `(,dst)))  
    ((< src dst) (range src dst (+ 1 traveled) (append new-list `(,(+ (or (first (last new-list)) src) 1)))))
    ((> src dst) (range src dst (+ 1 traveled) (append new-list `(,(- (or (first (last new-list)) src) 1)))))))
