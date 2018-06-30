(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default py-split-windows-on-execute-p t)

(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)

(add-hook 'python-mode-hook
          (lambda ()
            (push '("lambda" . ?λ) prettify-symbols-alist)))

(provide 'python-def)
