;;; Install ef-themes
(use-package ef-themes
  :ensure t)

;;; Disable cursor blinking
(blink-cursor-mode 0)

;;; Create custom face(s)
(defface unbox-button-face
  '((t :foreground "#479b3f"
	   :weight bold
	   :underline t))
  "Face for buttons in the Unbox-EMC start buffer")
