;;; Setup user settings
(defvar user-boot-theme nil
  "Unbox-EMC variable: Defines the theme that will automatically enable on boot.")
(defvar unbox-cursor-blink nil
  "Unbox-EMC variable: Enables-disables cursor blinking.")
(defvar unbox-completion-provider nil
  "Unbox-EMC variable: Sets the default completion provider (Company or Corfu) for Unbox-EMC")
(defvar unbox-support-rust nil
  "Unbox-EMC variable: Enables Unbox-EMC support for the Rust programming language.")
(defvar unbox-support-common-lisp nil
  "Unbox-EMC variable: Enables Unbox-EMC support for the Common Lisp programming language.")
(defvar unbox-support-python nil
  "Unbox-EMC variable: Enables Unbox-EMC support for the Python programming language.")
(defvar unbox-support-lua nil
  "Unbox-EMC variable: Enables Unbox-EMC support for the Lua programming language.")
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
