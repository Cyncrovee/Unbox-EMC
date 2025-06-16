;;; Set custom file and load custom options
(setopt custom-file (concat user-emacs-directory "custom.el")) ; Change custom variables so they are in thier own file
(load-file (concat user-emacs-directory "custom.el")) ; Loads variables, faces, etc set by custom

;;; Setup UI
(tool-bar-mode -1)
(menu-bar--display-line-numbers-mode-relative)
(global-display-line-numbers-mode)
(global-hl-line-mode)
(window-divider-mode)
(column-number-mode)
(display-time-mode)

;;; Custom start buffer
(setopt inhibit-startup-screen t)
