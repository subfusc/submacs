(require 'dart-mode)

;; The auto formater for dart is really not god IMO.
(custom-set-variables
 '(lsp-dart-enable-sdk-formatter nil)
 '(lsp-enable-on-type-formatting nil))

(add-hook 'dart-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))
(provide 'dart-setup)
