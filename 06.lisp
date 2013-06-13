(defun list-palindrome (palindrome-list)
  (if (equal (list-length palindrome-list) 0)
      "true"
      (if (equal (last palindrome-list)  
                 (list (car palindrome-list)))
          (list-palindrome (cdr (butlast palindrome-list))) 
          "false")))
