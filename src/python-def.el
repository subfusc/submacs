(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(add-to-list 'load-path (format "%s%s" install_directory "python-mode/"))
(setq py-install-directory (format "%s%s" install_directory "python-mode/"))
(require 'python-mode)

;; (autoload 'guess-style-set-variable "guess-style" nil t)
;; (autoload 'guess-style-guess-variable "guess-style")
;; (autoload 'guess-style-guess-all "guess-style" nil t)

;; (add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
;; ;;(add-hook 'python-mode-hook 'guess-style-guess-all)
;; (add-hook 'python-mode-hook (lambda ()
;; 			      (when indent-tabs-mode
;; 				(guess-style-guess-tab-width))))

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(provide 'python-def)
