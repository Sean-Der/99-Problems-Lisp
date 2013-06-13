(defun lotto-select (how-many high)
  (loop 
    with results
    repeat how-many
    do (push (random (+ 1 high)) results)
    finally (return results)))
