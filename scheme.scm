;Part 1) Implement a function to check if a list is a palindrome
;reverse is the function that take a list and returns a new list, with the same elements but in the opposite order
; My way of doinf this is to compare the inorder list call alex-list to the opposite order of using reverse function 

(define (palindrome? alist)
  (equal? alist (reverse alist)))    


(palindrome? '(m o m))

;Professor you may use the following word to test
;(palindrome? '(h e l l o))
;(palindrome? '(m y g y m))



;Merge two sorted lists into one sorted list. You can assume both input lists are sorted in ascending order
;My way of doing this is to sorted the both lists and pick one element from one and go over it if the element is bigger than first one.

(define (merge alist1 alist2)
  (cond ((null? alist1) alist2)
        ((null? alist2) alist1)
        ((>= (car alist1) (car alist2))
         (cons (car alist2) (merge alist1 (cdr alist2))))
        (else
         (cons (car alist1) (merge (cdr alist1) alist2)))))

(merge '(8 9 7) '(2 4 5))

