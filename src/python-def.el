(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default py-split-windows-on-execute-p t)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(provide 'python-def)

