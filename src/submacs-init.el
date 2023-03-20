;;; Install the melpa archive in emacs
(require 'melpa) ;; Package manager
(require 'basic-functionality) ;; Behaviour on default emacs stuff
(require 'looks) ;; Fonts, colors etc.
(require 'multiple-cursors-setup)
(require 'submacs-navigation) ;; Custom C-x o selector

(require 'magit) ;; Ensure Magit is available
(require 'company-setup)

(require 'ruby-setup)
(require 'shell-setup)
(require 'dart-setup)
(require 'go-setup)

(defun submacs-version () (message "0.5a"))
(provide 'submacs-init)
