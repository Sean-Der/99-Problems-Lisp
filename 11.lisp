(defun encode-modified (orig-list)
  (let ((orig-list (pack orig-list)) (new-list '()))
    (dolist (x orig-list) 
      (if (equal 1 (list-length x)) 
        (push (car x) new-list)
        (push (list (list-length x) (car x)) new-list)))
    (nreverse new-list)))

;This code is copied from 09.lisp, easier than dealing with CWD + load
(defun pack (orig-list &optional (new-list '()) (last-element nil))
  (if (equal orig-list '())
    new-list
    (progn 
      (if (not (equal (car orig-list) last-element)) 
        (setf new-list (append new-list (list nil))))
      (setf (nth (- (list-length new-list) 1) new-list) (append (list (car orig-list)) (nth (- (list-length new-list) 1) new-list))) 
      (pack (cdr orig-list) new-list (car orig-list)))))
