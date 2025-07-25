;;; Setup keymaps
;;; Initial configuration
(evil-set-leader 'normal (kbd "SPC")) ; Set leader key (normal mode)
(evil-set-leader 'visual (kbd "SPC")) ; Set leader key (visual mode)
(evil-global-set-key 'normal (kbd "<leader> SPC") 'execute-extended-command) ; Double tap space for M-x functionality (I think)
(evil-global-set-key 'normal (kbd "<leader> <home>") 'unbox-emc-start)
(evil-global-set-key 'normal (kbd "<leader> <end>") 'kill-emacs)
(evil-global-set-key 'normal (kbd "<leader> .") 'find-file)
(evil-global-set-key 'normal (kbd "<leader> /") 'dired)
(evil-global-set-key 'normal (kbd "C-=") 'text-scale-increase)
(evil-global-set-key 'normal (kbd "C--") 'text-scale-decrease)
;; Restart Emacs
(which-key-add-key-based-replacements "<leader> q" "Restart Emacs")
(evil-global-set-key 'normal (kbd "<leader> qq") 'restart-emacs)
;;; Write
(which-key-add-key-based-replacements "<leader> w" "Write")
(evil-global-set-key 'normal (kbd "<leader> ww") 'evil-write)
(evil-global-set-key 'normal (kbd "<leader> wq") 'evil-write-quit)
;;; Quit
(which-key-add-key-based-replacements "<leader> q" "Quit")
(evil-global-set-key 'normal (kbd "<leader> qq") 'evil-quit)
(evil-global-set-key 'normal (kbd "<leader> qa") 'evil-quit-all)
(evil-global-set-key 'normal (kbd "<leader> qr") 'restart-emacs)
;; Window Managment
(evil-global-set-key 'normal (kbd "M-o") 'other-window) ; Move to another window
(evil-global-set-key 'normal (kbd "C-M-k") 'evil-window-up)
(evil-global-set-key 'normal (kbd "C-M-j") 'evil-window-down)
(evil-global-set-key 'normal (kbd "C-M-h") 'evil-window-left)
(evil-global-set-key 'normal (kbd "C-M-l") 'evil-window-right)
(evil-global-set-key 'normal (kbd "S-<up>") 'evil-window-up)
(evil-global-set-key 'normal (kbd "S-<down>") 'evil-window-down)
(evil-global-set-key 'normal (kbd "S-<left>") 'evil-window-left)
(evil-global-set-key 'normal (kbd "S-<right>") 'evil-window-right)
(evil-global-set-key 'normal (kbd "<leader> |") 'split-window-horizontally)
(evil-global-set-key 'normal (kbd "<leader> -") 'split-window-vertically)
(evil-global-set-key 'normal (kbd "<leader> =") 'balance-windows)
;;; Magit
(evil-global-set-key 'normal (kbd "<f9>") 'magit) ; Use magit with F9
(evil-global-set-key 'normal (kbd "<C-f9>") 'simple-magit) ; Opens Magit, then deletes other windows
;;; Files/Directories
(which-key-add-key-based-replacements "<leader> f" "Files/Directories")
(which-key-add-key-based-replacements "<leader> ff" "Find/Navigate Files/Directories")
(which-key-add-key-based-replacements "<leader> fc" "Create Files/Directories")
(evil-global-set-key 'normal (kbd "<leader> ffr") 'recentf)
(evil-global-set-key 'normal (kbd "<leader> ffo") 'recentf-open-files)
(evil-global-set-key 'normal (kbd "<leader> ffc") 'open-emacs-config)
(evil-global-set-key 'normal (kbd "<leader> ffe") 'open-user-file)
(evil-global-set-key 'normal (kbd "<leader> fcd") 'make-directory)
(evil-global-set-key 'normal (kbd "<leader> fcf") 'make-empty-file)
;;; Projects
(which-key-add-key-based-replacements "<leader> p" "Find/Navigate Projects")
(evil-global-set-key 'normal (kbd "<leader> ps") 'project-switch-project)
(evil-global-set-key 'normal (kbd "<leader> pd") 'project-dired)
(evil-global-set-key 'normal (kbd "<leader> pf") 'project-find-file)
(evil-global-set-key 'normal (kbd "<leader> pl") 'project-list-buffers)
(evil-global-set-key 'normal (kbd "<leader> pb") 'project-switch-to-buffer)
;;; Consult
(which-key-add-key-based-replacements "<leader> c" "Consult")
(evil-global-set-key 'normal (kbd "<leader> cr") 'consult-recent-file)
(evil-global-set-key 'normal (kbd "<leader> cg") 'consult-grep)
(evil-global-set-key 'normal (kbd "<leader> cb") 'consult-buffer)
(evil-global-set-key 'normal (kbd "<leader> cf") 'consult-flymake)
;;; Describe
(which-key-add-key-based-replacements "<leader> d" "Describe")
(evil-global-set-key 'normal (kbd "<leader> ds") 'describe-symbol)
(evil-global-set-key 'normal (kbd "<leader> dk") 'describe-key)
(evil-global-set-key 'normal (kbd "<leader> dm") 'describe-key)
;;; Org
(which-key-add-key-based-replacements "<leader> o" "Org")
(evil-global-set-key 'normal (kbd "<leader> oa") 'org-agenda)
(evil-global-set-key 'normal (kbd "<leader> oc") 'org-capture)
(evil-global-set-key 'normal (kbd "<leader> on") 'open-default-org-file)
(evil-global-set-key 'normal (kbd "<leader> ot") 'org-toggle-checkbox)
(evil-global-set-key 'normal (kbd "<leader> oo") 'org-open-at-point)
(evil-global-set-key 'normal (kbd "<leader> ol") 'org-insert-link)
(evil-global-set-key 'normal (kbd "<leader> os") 'org-insert-timestamp)
(evil-global-set-key 'normal (kbd "<leader> of") 'open-user-org-files)
;;; Sly
(when unbox-support-common-lisp
  (which-key-add-key-based-replacements "<leader> s" "Sly")
  (evil-global-set-key 'normal (kbd "<leader> sl") 'sly)
  (evil-global-set-key 'normal (kbd "<leader> sb") 'sly-eval-buffer)
  (evil-global-set-key 'normal (kbd "<leader> sf") 'sly-eval-defun)
  (evil-global-set-key 'visual (kbd "<leader> sr") 'sly-eval-region))
;;; Eglot
(which-key-add-key-based-replacements "<leader> e" "Elgot")
(evil-global-set-key 'normal (kbd "<leader> ef") 'eglot-format-buffer)
(evil-global-set-key 'normal (kbd "<leader> ec") 'eglot-code-actions)
;;; Flymake
(which-key-add-key-based-replacements "<leader> y" "Flymake")
(evil-global-set-key 'normal (kbd "<leader> yn") 'flymake-goto-next-error)
(evil-global-set-key 'normal (kbd "<leader> yp") 'flymake-goto-prev-error)
;;; Rust
(when unbox-support-rust
  (which-key-add-key-based-replacements "<leader> r" "Rust")
  (evil-global-set-key 'normal (kbd "<leader> rr") 'rust-run))
;;; Menus
(which-key-add-key-based-replacements "<leader> u" "Menus")
(evil-global-set-key 'normal (kbd "<leader> up") 'list-processes)
(evil-global-set-key 'normal (kbd "<leader> ua") 'embark-act)
;;; Buffers
(which-key-add-key-based-replacements "<leader> b" "Buffers")
(evil-global-set-key 'normal (kbd "<leader> bm") 'buffer-menu)
(evil-global-set-key 'normal (kbd "<leader> bi") 'ibuffer)
(evil-global-set-key 'normal (kbd "<leader> bc") 'kill-current-buffer)
(evil-global-set-key 'normal (kbd "<leader> bt") 'term)
;;; Tabs
(which-key-add-key-based-replacements "<leader> t" "Tabs")
(evil-global-set-key 'normal (kbd "<leader> tn") 'centaur-tabs--create-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tc") 'kill-current-buffer)
(evil-global-set-key 'normal (kbd "C-<tab>") 'centaur-tabs-forward)
(evil-global-set-key 'normal (kbd "C-<iso-lefttab>") 'centaur-tabs-backward)
;;; Lines/Region
(which-key-add-key-based-replacements "<leader> l" "Lines/Region")
(evil-global-set-key 'normal (kbd "<leader> lg") 'join-line) ; Connect current line to above line
(evil-global-set-key 'normal (kbd "<leader> lt") 'toggle-truncate-lines)
(evil-global-set-key 'normal (kbd "<leader> lc") 'comment-line)
(evil-global-set-key 'visual (kbd "<leader> le") 'eval-region)
;;; Modes/Misc Toggles
(which-key-add-key-based-replacements "<leader> m" "Modes")
(evil-global-set-key 'normal (kbd "<leader> mi") 'eww)
(evil-global-set-key 'normal (kbd "<leader> mo") 'olivetti-mode)
(evil-global-set-key 'normal (kbd "<leader> mc") 'focus-mode)
(evil-global-set-key 'normal (kbd "<leader> mh") 'global-diff-hl-mode)
(evil-global-set-key 'normal (kbd "<leader> mw") 'global-visual-line-mode)
(evil-global-set-key 'normal (kbd "<leader> ml") 'toggle-truncate-lines)
(evil-global-set-key 'normal (kbd "<leader> mb") 'type-break) ; Take a break from typing
