;;; Primary Unbox-EMC setup is here
(unbox-setup
 ;; Set the completion provider ("company" or "corfu")
 :completion "corfu"

 ;; Set language support
 :rust nil
 :common-lisp nil
 :python nil
 :lua nil)

;;; Put anything else you want in this function! It will be run after all the other config files
(defun unbox-user-function ()
  (load-theme 'ef-summer))
