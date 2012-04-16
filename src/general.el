; General settings and configuration options for my EMACS
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)

(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	try-expand-whole-kill))

(global-set-key [(meta /)] 'hippie-expand)

(provide 'general)
