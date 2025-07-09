;;; Setup packages (ELPA and built-in)
(use-package evil
  :ensure t
  :init
  (evil-mode)
  :config
  (evil-set-undo-system 'undo-redo))
(when (string-equal-ignore-case unbox-completion-provider "corfu")
  (use-corfu-completion))
(when (string-equal-ignore-case unbox-completion-provider "company")
  (use-company-completion))
(use-package vertico
  :ensure t
  :config
  (vertico-mode)
  (vertico-mouse-mode)
  (define-key vertico-map (kbd "<tab>") 'vertico-next)
  (define-key vertico-map (kbd "<backtab>") 'vertico-previous))
(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))
(use-package indent-bars
  :ensure t
  :hook
  ((rust-mode lua-mode python-mode conf-space-mode) . indent-bars-mode))
(use-package rainbow-delimiters
  :ensure t
  :hook
  ((lisp-mode emacs-lisp-mode conf-space-mode) . rainbow-delimiters-mode))
(use-package magit
  :ensure t
  :defer t)
(use-package diff-hl
  :ensure t
  :defer t)
(use-package aggressive-indent
  :ensure t
  :hook
  ((lisp-mode emacs-lisp-mode python-mode) . aggressive-indent-mode))
(use-package markdown-mode
  :ensure t
  :defer t)
(use-package consult
  :ensure t)
(use-package embark
  :ensure t)
(use-package embark-consult
  :ensure t)
(use-package org
  :defer t
  :hook
  ('org-mode . 'org-indent-mode))

;;; User language support (ELPA and builtin)
(when unbox-support-rust
  (use-package rust-mode
	:ensure t
	:defer t
	:hook
	('rust-mode . 'eglot-ensure)))

(when unbox-support-common-lisp
  (use-package sly
	:ensure t
	:defer t))

(when unbox-support-python
  (add-hook 'python-mode-hook 'eglot-ensure))

(when unbox-support-zig
  (use-package zig-mode
	:ensure t
	:defer t
	:hook
	('zig-mode . 'eglot-ensure)))
