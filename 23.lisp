(defun rnd-select (src-list how-many)
 (loop 
  repeat how-many
  with return-list
  do (push (nth (random (list-length src-list)) src-list) return-list)
  finally (return return-list)))
