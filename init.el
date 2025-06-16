;;; Setup user settings
(defvar user-boot-theme nil)
(defvar user-cursor-blink)
(defvar user-completion-provider)
(defvar user-support-rust)
(defvar user-support-common-lisp)
(defvar user-support-python)
(defvar user-support-lua)
(load-file (concat user-emacs-directory "/lisp/user.el"))

;;; Load elisp files. These files are loaded in a specific order; changing said order could mess up the config. Be careful!
(load-file (concat user-emacs-directory "/lisp/appearence.el"))
(load-file (concat user-emacs-directory "/lisp/functions.el"))
(load-file (concat user-emacs-directory "/lisp/options.el"))
(load-file (concat user-emacs-directory "/lisp/packages-elpa.el"))
(load-file (concat user-emacs-directory "/lisp/packages-melpa.el"))
(load-file (concat user-emacs-directory "/lisp/keymaps.el"))

;;; Run the user function defined in user.el
(unbox-user-function)

;;; Create/Switch to custom start buffer
(show-unbox-emc-start)
