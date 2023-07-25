(require 'go-mode)
(require 'lsp-setup)
(require 'dap-dlv-go)
(require 'dap-mode)
;; go install github.com/go-delve/delve/cmd/dlv@latest
(extend-emacs-executable-paths "/home/sin/go/bin")

(add-hook 'go-mode-hook 'lsp-mode)

(provide 'go-setup)
