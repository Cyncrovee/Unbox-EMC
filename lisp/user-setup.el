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
  (when rust
	(setq unbox-support-rust t))
  (when common-lisp
	(setq unbox-support-common-lisp t))
  (when python
	(setq unbox-support-python t))
  (when lua
	(setq unbox-support-lua t))
  (when zig
	(setq unbox-support-zig t))
  (when elm
	(setq unbox-support-elm t)))
