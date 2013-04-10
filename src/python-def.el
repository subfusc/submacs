(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default py-split-windows-on-execute-p t)
(setq py-shell-name "ipython")

(add-to-list 'load-path (format "%s%s" install_directory "python-mode/"))
(setq py-install-directory (format "%s%s" install_directory "python-mode/"))
;(add-to-list 'load-path (format "%s%s" install_directory "emacs-ipython-notebook/"))
;(add-to-list 'load-path (format "%s%s" install_directory "emacs-request/"))
(require 'python-mode)
;(require 'ein)

;; (autoload 'guess-style-set-variable "guess-style" nil t)
;; (autoload 'guess-style-guess-variable "guess-style")
;; (autoload 'guess-style-guess-all "guess-style" nil t)

;; (add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
;; ;;(add-hook 'python-mode-hook 'guess-style-guess-all)
;; (add-hook 'python-mode-hook (lambda ()
;; 			      (when indent-tabs-mode
;; 				(guess-style-guess-tab-width))))

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.fcfg\\'" . python-mode))

(provide 'python-def)
