;; -*- coding: utf-8 -*-
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)


(when window-system ;; AVOID ACCIDENTAL CLOSE OF EMACS
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Clean file of useless whitespace on save
(fset 'yes-or-no-p 'y-or-n-p) ; Don't need to write the entire word all the time
(setq standard-ident 2)

(provide 'basic-functionality)
