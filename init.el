;;; Setup user settings
(load-file (concat user-emacs-directory "/lisp/user-setup.el"))
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
(unbox-emc-start)
