;; -*- coding: utf-8 -*-

(require 'package)
(package-initialize)

(setq wanted-packages
      '(dart-mode
	lsp-mode
	lsp-dart
	lsp-treemacs
	flycheck
	company
	lsp-ui
	hover
	;; Dart packages
	robe
	;; Ruby
	rust-mode
	;; Rust
	multiple-cursors
	magit
	markdown-mode
	;; Productivity
	))

(when (cl-find-if-not #'package-installed-p wanted-packages)
  (package-refresh-contents)
  (mapc #'package-install wanted-packages))
