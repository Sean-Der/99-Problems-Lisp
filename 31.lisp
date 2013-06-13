(defun is-prime (subject)
  (loop 
    for i from 2 to (- subject 1) 
    if (integerp (/ subject i))
      do (return nil)
    finally (return t)))
