(setq lsp-keymap-prefix "s-x")
(require 'lsp-mode)
;; The breadcrumbs are missleading when having multiple buffers open at the same time
(setq lsp-headerline-breadcrumb-enable nil)
(provide 'lsp-setup)
