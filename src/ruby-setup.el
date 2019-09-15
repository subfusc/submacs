;; -*- coding: utf-8 -*-
(require 'company)
(require 'robe)
(require 'whitespace)

;; Check for rbenv and set the paths to allow robe to use the shims
(if (file-exists-p (concat (getenv "HOME") "/.rbenv/shims"))
    (progn
      (unless (string-match ".rbenv/shims" (getenv "PATH"))
	(setenv "PATH"
		(concat (getenv "HOME") "/.rbenv/shims:" (getenv "PATH"))))
      (let ((found nil))
	(dolist (element exec-path)
	  (if (string-match ".rbenv/shims" element)
	      (setq found \t)))
	(unless found
	  (push (concat (getenv "HOME") "/.rbenv/shims") exec-path)))))

(eval-after-load 'company
  '(push 'company-robe company-backends))

(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook 'whitespace-mode)
(provide 'ruby-setup)
