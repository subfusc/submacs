(add-to-list 'load-path "~/.emacs-things/python-mode/")
(setq py-install-directory "~/.emacs-things/python-mode/")
(require 'python-mode)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(provide 'python-def)
