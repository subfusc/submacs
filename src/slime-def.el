; Everything for the slime setup
;; SLIME PATH:
(defvar slime-path "/usr/share/emacs/site-lisp/slime")
(defvar swank-path "/usr/share/common-lisp/source/swank/")

(setq inferior-lisp-program "clisp -I")
(setq slime-backend (concat swank-path "swank-loader.lisp"))
(setq slime-net-coding-system 'utf-8-unix)
(add-to-list 'load-path slime-path)

(require 'slime)
(require 'hyperspec)
(slime-setup)

(eval-after-load "slime" 
  '(progn
    (setq common-lisp-hyperspec-root (format "%s%s" install_directory "/HyperSpec/HyperSpec/"))
    (add-hook 'slime-mode-hook 
     (lambda ()
       (set-variable lisp-indent-function 'common-lisp-indent-function)
       (local-set-key [tab] 'slime-indent-and-complete-symbol)))
    (add-hook 'inferior-lisp-mode-hook 
     (lambda () 
       (inferior-slime-mode t)))
    (add-hook 'inferior-slime-mode-hook
     (lambda ()
       (local-set-key [tab] 'slime-indent-and-complete-symbol)))))
  
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))

(global-set-key [f5] 'slime)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))

(provide 'slime-def)
