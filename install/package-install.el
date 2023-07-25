;; -*- coding: utf-8 -*-

(require 'package)
(package-initialize)

(setq wanted-packages
      ;; Auto-complete/ LSP / DAP packages
      '(lsp-mode
	lsp-treemacs
	dap-mode
	flycheck
	company
	lsp-ui
	hover
	;; Dart packages
	dart-mode
	lsp-dart
	;; Go Packages
	go-mode
	;; Ruby Packages
	ruby-mode
	;; Productivity
	multiple-cursors	
	magit
	markdown-mode))

(when (cl-find-if-not #'package-installed-p wanted-packages)
  (package-refresh-contents)
  (mapc #'package-install wanted-packages))
