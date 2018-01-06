;; PROVIDE A SETUP FOR AUTOCOMPLETE
(require 'auto-complete-config)

(ac-config-default)

(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'emacs-lisp-mode)
(add-to-list 'ac-modes 'slime-mode)
(add-to-list 'ac-modes 'lisp-mode)

(provide 'autocomplete-def)
