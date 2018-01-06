; General settings and configuration options for my EMACS
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(tool-bar-mode -1)
(global-highlight-parentheses-mode)
(fset 'yes-or-no-p 'y-or-n-p)

(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	try-expand-whole-kill))

(global-set-key [(meta /)] 'hippie-expand)

;; Keyboard shortcuts for multiplie-cursor mode
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system ;; AVOID ACCIDENTAL CLOSE OF EMACS
  (global-set-key (kbd "C-x C-c") 'ask-before-closing)) 

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Clean file of useless whitespace on save

(provide 'general)
