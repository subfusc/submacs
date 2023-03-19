;; -*- coding: utf-8 -*-
(require 'company)
(require 'whitespace)
(require 'submacs-functions)

;; Check for rbenv and set the paths to allow robe to use the shims
(let ((rbenv-dir (concat (getenv "HOME") "/.rbenv/shims")))
  (if (file-exists-p rbenv-dir) (extend-emacs-executable-paths rbenv-dir)))

(add-hook 'ruby-mode-hook 'company-mode)
(add-hook 'ruby-mode-hook 'whitespace-mode)
(provide 'ruby-setup)
