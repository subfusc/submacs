; Everything for the slime setup
(setq inferior-lisp-program "sbcl --dynamic-space-size 4096")
(setq slime-net-coding-system 'utf-8-unix)

(slime-setup '(slime-asdf
               slime-autodoc
               slime-editing-commands
               slime-fancy
               slime-fontifying-fu
               slime-fuzzy
               slime-indentation
               slime-package-fu
               slime-references
               slime-repl
               slime-sbcl-exts
               slime-scratch
               slime-xref-browser))
  
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(add-hook 'slime-mode-hook 'set-up-slime-ac)

(global-set-key [f5] 'slime)
(provide 'slime-def)
