;;; Install the melpa archive in emacs
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'looks)
(require 'basic-functionality)
(require 'magit-setup)
(require 'multiple-cursors-setup)
(provide 'submacs-init)
