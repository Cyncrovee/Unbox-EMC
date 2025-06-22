(defvar unbox-completion-provider nil
  "Sets the default completion provider (Company or Corfu) for Unbox-EMC")
(defvar unbox-support-rust nil
  "Enables Unbox-EMC support for the Rust programming language.")
(defvar unbox-support-common-lisp nil
  "Enables Unbox-EMC support for the Common Lisp programming language.")
(defvar unbox-support-python nil
  "Enables Unbox-EMC support for the Python programming language.")
(defvar unbox-support-lua nil
  "Enables Unbox-EMC support for the Lua programming language.")
(defvar unbox-support-zig nil
  "Enables Unbox-EMC support for the Zig programming language.")
(defvar unbox-support-elm nil
  "Enables Unbox-EMC support for the Elm programming language.")

(unless (file-exists-p (concat user-emacs-directory "lisp/user.el"))
  (copy-file (concat user-emacs-directory "lisp/user-template.el") (concat user-emacs-directory "lisp/user.el")))

(cl-defun unbox-setup (&key completion rust common-lisp python lua zig elm)
  (setq unbox-completion-provider completion)
  (if rust
	  (setq unbox-support-rust t))
  (if common-lisp
	  (setq unbox-support-common-lisp t))
  (if python
	  (setq unbox-support-python t))
  (if lua
	  (setq unbox-support-lua t))
  (if zig
	  (setq unbox-support-zig t))
  (if elm
	  (setq unbox-support-elm t)))
