(add-to-list 'load-path "~/.emacs-things/single-files")

(require 'lambda-mode)
(require 'anything)
(require 'anything-show-completion)
(setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))

(add-hook 'lisp-mode-hook #'lambda-mode 1)
(add-hook 'inferior-lisp-mode-hook #'lambda-mode 1)
(add-hook 'python-mode-hook #'lambda-mode 1)

(provide 'fancy)
