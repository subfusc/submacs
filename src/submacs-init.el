;;; Install the melpa archive in emacs
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'general)
(require 'fancy)
(require 'autocomplete-def)
(require 'slime-def)
(require 'auctex-def)
(require 'python-def)
(require 'ruby-def)
(require 'elm-def)
(provide 'submacs-init)
