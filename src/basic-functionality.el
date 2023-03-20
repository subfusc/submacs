;; -*- coding: utf-8 -*-
(require 'submacs-functions)

(ido-mode 1) ;; File fuzzy searcher
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; Clean file of useless whitespace on save
(fset 'yes-or-no-p 'y-or-n-p) ;; Don't need to write the entire word all the time
(setq indent-tabs-mode nil) ;; Tabs always causes fuckups, so never have them

(when window-system ;; AVOID ACCIDENTAL CLOSE OF EMACS
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

(provide 'basic-functionality)
