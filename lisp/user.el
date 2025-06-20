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
 unbox-cursor-blink "false"

 ;; This variable (user-completion-provider) sets the completion provider.
 ;; Set to "corfu" for corfu, or "company" for company.
 unbox-completion-provider "corfu"

 ;; Language support.
 ;; To enable support for a language, the value of the associated variable from nil to t.
 unbox-support-rust nil         ; Requires rust-analyzer to be installed!
 unbox-support-common-lisp nil  ; Remember to set your inferior lisp program!
 unbox-support-python nil       ; Requires a python LSP to be installed! (see https://github.com/joaotavoro#connection-to-a-server for LSP options)
 unbox-support-lua nil)         ; Simply installs lua-mode from MELPA, no OOTB LSP at the moment

;;; Put anything else you want in this function! It will be run after all the other config files
(defun unbox-user-function ())
