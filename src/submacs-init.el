;;; Install the melpa archive in emacs
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'looks)
(require 'basic-functionality)
(require 'whitespace-setup)
(require 'magit-setup)
(require 'multiple-cursors-setup)
(require 'company-setup)
(require 'ruby-setup)
(require 'rust-setup)

(defun submacs-version ()
    (message "0.2a"))
(provide 'submacs-init)
