; -*- coding: utf-8 -*-
(setq jedi:setup-keys t)
(add-to-list 'load-path (format "%s%s" install_directory "emacs-epc"))
(add-to-list 'load-path (format "%s%s" install_directory "emacs-jedi"))

(autoload 'jedi:setup "jedi" nil t)

(add-hook 'python-mode-hook 'jedi:setup)
;(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

;;(add-hook 'python-mode-hook 'jedi:setup)
(provide 'jedi-def)
