;;; Setup custom functions
(defun unbox-emc-start ()
  (interactive)
  (if (get-buffer "*start*")
	  (switch-to-buffer "*start*")
	(with-current-buffer (get-buffer-create "*start*")
	  (insert "* Welcome to Unbox-EMC!\n")
	  (insert "[")
	  (insert-button "View Repository ->"
					 'face "unbox-button-face"
					 'help-echo "Open the Unbox-EMC repository (may open in external browser)"
					 'action (lambda (button)
							   (browse-url "https://github.com/Cyncrovee/Unbox-EMC")))
	  (insert "]")
	  (newline)
	  (newline)
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
	  (insert-button "Use the Ibuffer Menu"
					 'action (lambda (button)
							   (ibuffer)))
	  (insert "   <leader> bi\n")
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
	  (newline)
	  (insert "* Recent breaking changes!:\n")
	  (newline)
	  (insert "The configuration has been overhauled to be easier to use and prevent merge conflicts. To update, it is recommended to do a full refresh of the Unbox-EMC config. To do this on Linux, run these commands while in the Unbox-EMC repository (assuming you haven't made any commits yourself):\n")
	  (newline)
	  (insert "git reset --hard HEAD\n")
	  (insert "git fetch\n")
	  (insert "git pull\n")
	  (read-only-mode)
	  (goto-char (point-min)))
	(switch-to-buffer "*start*")
	;; Unless the font size is already at a certain height, scale it up a bit
	(when (<= (face-attribute 'default :height) 150)
	  (text-scale-increase 2))
	(olivetti-mode)
	(olivetti-set-width 0.55)))

(defun use-company-completion ()
  (use-package company
    :ensure t
    :init
    (global-company-mode)
    (company-tng-mode)
    :config
    (setq company-minimum-prefix-length 1
          company-idle-delay 0)))

(defun use-corfu-completion ()
  (use-package corfu
    :ensure t
    :init
    (global-corfu-mode)
    (corfu-popupinfo-mode)
    :config
    (setopt corfu-cycle t
            corfu-auto t
            corfu-auto-delay 0.0
            corfu-auto-prefix 0
            corfu-preview-current nil
			corfu-preselect 'prompt
            corfu-quit-no-match 'separator)
    :bind (:map corfu-map
                ("<tab>" . 'corfu-next)
                ("<backtab>" . 'corfu-previous)))
  (use-package cape
    :ensure t
    :init
    (add-hook 'completion-at-point-functions #'cape-dabbrev)
    (add-hook 'completion-at-point-functions #'cape-file)
    (add-hook 'completion-at-point-functions #'cape-elisp-symbol)
    (add-hook 'completion-at-point-functions #'cape-elisp-block)
    (add-hook 'completion-at-point-functions #'cape-keyword)))

(defun open-emacs-config ()
  "Open the Emacs directory in Dired."
  (interactive)
  (dired user-emacs-directory))

(defun open-user-file ()
  "Open the user config file, for base configuration."
  (interactive)
  (find-file-existing (concat user-emacs-directory "lisp/user.el")))

(defun open-user-org-files ()
  "Open the Emacs directory in Dired."
  (interactive)
  (dired org-agenda-files))

(defun open-default-org-file ()
  "Open the org-default-notes-file."
  (interactive)
  (find-file-existing org-default-notes-file))

(defun evil-write-quit ()
  "Call evil-write, then evil-quit."
  (interactive)
  (evil-write)
  (evil-quit))

(defun simple-magit ()
  "Open Magit, then delete other windows and enable Olivetti mode."
  (interactive)
  (magit)
  (delete-other-windows)
  (olivetti-mode))

(defun delete-all-buffers-except-current ()
  "Goes through each buffer, only deleting it if the buffer name matches that of the current buffer."
  (interactive)
  (let ((current-buffer-name (buffer-name (current-buffer))))
    (dolist (buf (buffer-list))
      (when (not (string-equal current-buffer-name (buffer-name buf)))
        (kill-buffer buf)))))

(define-minor-mode unbox-global-olv-mode
  "Unbox-EMC mode: Enables olivetti (Olv) mode in many buffers (the minibuffer is not included)."
  :init-value nil
  :global t
  :keymap nil
  :lighter nil
  (if unbox-global-olivetti-mode
	  (add-hook 'window-configuration-change-hook '(lambda ()
													 (when unbox-global-olivetti-mode
													   (when (not (active-minibuffer-window))
														 (when (not olivetti-mode)
														   (olivetti-mode))))))))
