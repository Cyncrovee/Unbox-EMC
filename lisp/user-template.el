;;; Primary Unbox-EMC setup is here
(unbox-setup
 ;; Set the completion provider ("company" or "corfu")
 :completion "corfu"

 ;; Set Unbox-EMC language support
 ;; To enable Unbox-EMC support for a language, change it's value from nil to t
 :rust nil         ; The rust-analyzer LSP is recommended!
 :common-lisp nil  ; You may want to set your inferior-lisp-program
 :python nil
 :lua nil
 :zig nil          ; The ZLS LSP is recommended!
 :elm nil)

;;; Put anything else you want in this function! It will be run after all the other config files
(defun unbox-user-function ()
  (load-theme 'ef-summer))
