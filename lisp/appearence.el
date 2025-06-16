;;; Load theme set in user.el
(use-package ef-themes
  :ensure t
  :config
  (if (string-equal-ignore-case user-boot-theme "light")
      (load-theme 'ef-light))
  (if (string-equal-ignore-case user-boot-theme "spring")
      (load-theme 'ef-spring))
  (if (string-equal-ignore-case user-boot-theme "summer")
      (load-theme 'ef-summer))
  (if (string-equal-ignore-case user-boot-theme "owl")
	  (load-theme 'ef-owl))
  (if (string-equal-ignore-case user-boot-theme "autumn")
	  (load-theme 'ef-autumn))
  (if (string-equal-ignore-case user-boot-theme "winter")
	  (load-theme 'ef-winter))
  (if (string-equal-ignore-case user-boot-theme "bio")
	  (load-theme 'ef-bio)))

;;; Enable/disable cursor blinking from option in user.el
(if (string-equal-ignore-case user-cursor-blink "true")
	(blink-cursor-mode 1)
  (blink-cursor-mode 0))

;;; Create custom face(s)
(defface unbox-button-face
  '((t :foreground "#479b3f"
	   :weight bold
	   :underline t))
  "Face for buttons in the Unbox-EMC start buffer")
