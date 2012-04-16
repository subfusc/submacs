(add-to-list 'load-path (format "%s%s" install_directory "python-mode/"))
(setq py-install-directory (format "%s%s" install_directory "python-mode/"))
(require 'python-mode)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(provide 'python-def)
