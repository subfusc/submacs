; Everything for the slime setup
;; SLIME PATH:
(defvar slime-path (format "%s%s" install_directory "/slime/"))
(defvar swank-path (format "%s%s" install_directory "/slime/"))

(setq inferior-lisp-program "sbcl --dynamic-space-size 4096")
(setq slime-backend (concat swank-path "swank-loader.lisp"))
(setq slime-net-coding-system 'utf-8-unix)
(add-to-list 'load-path slime-path)

(require 'slime)
;(require 'slime-autoloads)
(require 'ac-slime)
(require 'hyperspec)

;(autoload 'slime "my-slime" "Slime mode." t)
;(autoload 'slime-connect "my-slime" "Slime mode." t)

(slime-setup '(slime-asdf
               slime-autodoc
               slime-editing-commands
               slime-fancy
               slime-fontifying-fu
               slime-fuzzy
               slime-indentation
               slime-mdot-fu
               slime-package-fu
               slime-references
               slime-repl
               slime-sbcl-exts
               slime-scratch
               slime-xref-browser))

(eval-after-load "slime" 
  '(progn
    (setq common-lisp-hyperspec-root (format "%s%s" install_directory "/HyperSpec/HyperSpec/"))
    (add-hook 'inferior-lisp-mode-hook 
              (lambda () 
                (inferior-slime-mode t)))))

;; (add-hook 'slime-mode-hook 
;; (lambda ()
;;   (set-variable lisp-indent-function 'common-lisp-indent-function)
;;   (local-set-key [tab] 'slime-indent-and-complete-symbol)))
;; (add-hook 'inferior-slime-mode-hook
;;  (lambda ()
;;    (local-set-key [tab] 'slime-indent-and-complete-symbol)))))
  
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
;(add-hook 'lisp-mode-hook (lambda () (slime-autodoc-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(add-hook 'slime-mode-hook 'set-up-slime-ac)
;(add-hook 'slime-repl-mode-hook 'set-up-slime-a)

(global-set-key [f5] 'slime)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))

(provide 'slime-def)
