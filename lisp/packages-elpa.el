;;; Setup packages (ELPA and built-in)
(use-package evil
  :ensure t
  :init
  (evil-mode)
  :config
  (evil-set-undo-system 'undo-redo))
(if (string-equal-ignore-case user-completion-provider "corfu")
	(use-corfu-completion))
(if (string-equal-ignore-case user-completion-provider "company")
	(use-company-completion))
(use-package vertico
  :ensure t
  :config
  (vertico-mode)
  (vertico-mouse-mode)
  (define-key vertico-map (kbd "<tab>") 'vertico-next)
  (define-key vertico-map (kbd "<backtab>") 'vertico-previous)
  (define-key vertico-map (kbd "<C-return>") 'vertico-insert))
(if user-boot-theme
	(interactive)
  (progn
	(setopt user-boot-theme
			(completing-read "No theme set in user.el file. Set theme for this session? (Press tab to see default values. Or use a different value to not load a theme): " '("light" "spring" "summer" "owl" "autumn" "winter" "bio")))
	(load-file (concat user-emacs-directory "/lisp/appearence.el"))))
  (use-package marginalia
	:ensure t
	:init
	(marginalia-mode))
(use-package indent-bars
  :ensure t
  :hook
  ((rust-mode conf-space-mode) . indent-bars-mode))
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
  ((lisp-mode emacs-lisp-mode) . aggressive-indent-mode))
(use-package markdown-mode
  :ensure t)
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
(if user-support-rust
	(use-package rust-mode
	  :ensure t
	  :defer t
	  :hook
	  ('rust-mode . 'eglot-ensure)))

(if user-support-common-lisp
	(use-package sly
	  :ensure t
	  :defer t))

(if user-support-python
	(add-hook 'python-mode-hook 'eglot-ensure))
