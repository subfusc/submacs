;; PROVIDE A SETUP FOR AUTOCOMPLETE
(add-to-list 'load-path (format "%s%s" install_directory "/auto-complete"))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (format "%s%s" install_directory "/auto-complete/ac-dict"))

(ac-config-default)

(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'newlisp-mode)
(add-to-list 'ac-modes 'emacs-lisp-mode)
(add-to-list 'ac-modes 'slime-mode)
(add-to-list 'ac-modes 'lisp-mode)

;; (global-auto-complete-mode t)
;; (auto-complete-mode t)

;; (define-globalized-minor-mode real-global-auto-complete-mode
;;   auto-complete-mode (lambda ()
;;                        (if (not (minibufferp (current-buffer)))
;;                          (auto-complete-mode 1))))
;; (real-global-auto-complete-mode t)
(provide 'autocomplete-def)
