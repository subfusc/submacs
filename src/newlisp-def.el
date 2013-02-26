(add-to-list 'load-path (format "%s%s" install_directory "/newlisp-files/"))

(require 'newlisp)

(add-to-list 'auto-mode-alist '("\\.nlsp$" . newlisp-mode))
(add-to-list 'interpreter-mode-alist '("newlisp" . newlisp-mode))

(newlisp-mode-setup)

(provide 'newlisp-def)
