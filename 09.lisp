(defun pack (orig-list &optional (new-list '()) (last-element nil))
  (if (equal orig-list '())
      new-list
      (progn 
        (if (not (equal (car orig-list) last-element)) 
        (setf new-list 
              (append new-list (list nil))))
      (setf (nth (- (list-length new-list) 1) new-list) 
            (append (list (car orig-list)) 
                    (nth (- (list-length new-list) 1) new-list))) 
      (pack (cdr orig-list) 
            new-list 
            (car orig-list)))))


;This answer is wrong. This function creates a single sublist for each distinct symbol, instead of distinct symbols that are consecutive 
;(defun pack (cur-list &optional (packed-list '()))
;  (if (equal cur-list '())
;    packed-list
;    (let ((n 0)) 
;      (loop for i in packed-list do 
;          (if (equal (car i) (car cur-list))
;            (progn (setf (nth n packed-list) (append i (list (car i)))) (return (pack (cdr cur-list) packed-list)))
;            (incf n))
;          finally (return (pack (cdr cur-list) (append packed-list (list (list (car cur-list))))))))))
