;;; User-Specific Configuration
(setopt
 ;; This variable (user-boot-theme) sets the theme on boot.
 ;; The following options are available:
 ;; "light": ef-light
 ;; "spring": ef-spring
 ;; "summer": ef-summer
 ;; "owl": ef-owl
 ;; "autumn": ef-autumn
 ;; "winter": ef-winter
 ;; "bio": ef-bio
 ;; Any other value will not load a theme, allowing you to load your own.
 ;; Alternatively, comment out the line to show a theme selection promt at boot.
 user-boot-theme "summer"

 ;; This variable (user-cursor-blink) enables/disables cursor blinking.
 ;; The following options are available:
 ;; "true": enable cursor blinking
 ;; Any other value will disable cursor blinking
 user-cursor-blink "false"

 ;; This variable (user-completion-provider) sets the completion provider.
 ;; Set to "corfu" for corfu, or "company" for company.
 user-completion-provider "corfu"

 ;; Language support.
 ;; To enable support for a language, the value of the associated variable from nil to t.
 user-support-rust nil         ; Requires rust-analyzer to be installed!
 user-support-common-lisp nil) ; Remember to set your inferior lisp program!

;;; Put anything else you want in this function! It will be run after all the other config files
(defun unbox-user-function ())
