;;; Set custom file and load custom options
(setopt custom-file (concat user-emacs-directory "custom.el")) ; Change custom variables so they are in thier own file
(load-file (concat user-emacs-directory "custom.el")) ; Loads variables, faces, etc set by custom

;;; Setup UI
(tool-bar-mode -1)
(menu-bar--display-line-numbers-mode-relative)
(global-display-line-numbers-mode)
(global-hl-line-mode)
(global-tab-line-mode)
(window-divider-mode)
(column-number-mode)
(display-time-mode)

;;; Custom start buffer
(setopt inhibit-startup-screen t)
(defface unbox-button-face
  '((t :foreground "#479b3f"
	   :weight bold
	   :underline t))
  "Face for buttons in the Unbox-EMC start buffer")
(defun show-unbox-emc-start ()
  (interactive)
  (if (get-buffer "*start*")
	  (switch-to-buffer "*start*")
	(with-current-buffer (get-buffer-create "*start*")
	  (insert "* Welcome to Unbox-EMC!\n")
	  (insert "If this is your first time booting, you may see some warning/error messages. These (hopefully) shouldn’t be a problem unless they show up again after reboot.\n")
	  (newline)
	  (insert "You can access the user.el file with '<leader> ffe'. This file is for high level configuration, and is intended to be relatively simple and easy to use.\n")
	  (insert "If you want to access the full config, you can use '<leader> ffc'\n")
	  (newline)
	  (insert "* The leader key is most likely set to space.\n")
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
	  (insert "             <leader> <end>\n")
	  (newline)
	  (insert "Emacs Init Time: ")
	  (insert-button (emacs-init-time)
					 'face "unbox-button-face"
					 'help-echo "Open the help buffer for emacs-init-time"
					 'action (lambda (button)
							   (describe-command 'emacs-init-time)))
	  (newline)
	  (insert "Note: this time may not be entirely accurate\n")
	  (read-only-mode)
	  (goto-char (point-min)))
	(switch-to-buffer "*start*")
	;; Unless the font size is already at a certain height, scale it up a bit
	(if (<= (face-attribute 'default :height) 150)
		(text-scale-increase 2))
	(olivetti-mode)
	(olivetti-set-width 0.45)
	(tab-line-mode))) ; For some reason the start buffer doesn’t respect global-tab-line-mode already being enabled, so it’s enabled here as well.
