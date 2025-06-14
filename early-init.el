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
(with-current-buffer (get-buffer-create "*start*")
  (insert "* Welcome to Unbox-EMC!\n")
  (insert "If this is your first time booting, you may see some warning/error messages. These (hopefully) shouldn’t be a problem unless they show up again after reboot.\n")
  (newline)
  (insert "You can access the user.el file with '<leader> ffe'. This file is for high level configuration, and is intended to be relatively simple and easy to use.\n")
  (insert "If you want to access the full config, you can use '<leader> ffc'\n")
  (newline)
  (insert "** The leader key is most likely set to space.\n")
  (newline)
  (insert-button "Open user.el"
				 'action (lambda (button)
						   (open-user-file)))
  (insert "           <leader> ffe\n")
  (insert-button "Open Full Config"
				 'action (lambda (button)
						   (open-emacs-config)))
  (insert "       <leader> ffc\n")
  (insert-button "Use the Buffer Menu"
				 'action (lambda (button)
						   (buffer-menu)))
  (insert "    <leader> bm\n")
  (insert-button "Restart Emacs"
				 'action (lambda (button)
						   (restart-emacs)))
  (insert "          <leader> qr\n")
  (insert-button "Exit Emacs"
				 'action (lambda (button)
						   (kill-emacs)))
  (read-only-mode)
  (goto-char 1))
