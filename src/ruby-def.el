;; -*- coding: utf-8 -*-

;; Ruby block
(require 'ruby-block)
(ruby-block-mode t)

;; lambda pretty
(add-hook 'ruby-mode-hook
          (lambda ()
            (push '("->" . ?λ) prettify-symbols-alist)
            (push '("lambda" . ?λ) prettify-symbols-alist)))

(provide 'ruby-def)
