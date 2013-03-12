(add-to-list 'load-path (format "%s%s" install_directory "single-files"))

(require 'lambda-mode)
(setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))

(add-hook 'lisp-mode-hook #'lambda-mode 1)
(add-hook 'inferior-lisp-mode-hook #'lambda-mode 1)
(add-hook 'python-mode-hook #'lambda-mode 1)

(ido-mode)

(provide 'fancy)
