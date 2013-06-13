(defun rotate (subject rotate-number)
    (cond 
        ((equal rotate-number 0) subject)
        ((< rotate-number 0) (rotate (append (last subject) (butlast subject)) (+ rotate-number 1)))  
        ((> rotate-number 0) (rotate (append (cdr subject) `(,(car subject))) (- rotate-number 1)))))
