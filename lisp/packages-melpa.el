;;; Setup MELPA Stable packages
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(use-package centaur-tabs
  :ensure t
  :config
  (centaur-tabs-mode)
  (setopt centaur-tabs-set-icons nil
		  centaur-tabs-cycle-scope 'tabs))
(use-package evil-collection
  :ensure t
  :init
  (evil-collection-init))
(use-package prescient
  :ensure t)
(use-package corfu-prescient
  :ensure t
  :init
  (corfu-prescient-mode))
(use-package vertico-prescient
  :ensure t
  :init
  (vertico-prescient-mode))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setopt doom-modeline-icon nil))
(use-package olivetti
  :ensure t
  :config
  (setopt olivetti-body-width 0.70)
  :hook
  (eww-mode . olivetti-mode))
(use-package crux
  :ensure t
  :defer t)
(use-package focus
  :ensure t
  :defer t)
