;; -*- coding: utf-8 -*-
(require 'rust-mode)

(extend-emacs-executable-paths (concat (getenv "HOME") "/.cargo/bin"))
(setq racer-rust-src-path
      (concat (string-trim (shell-command-to-string "rustc --print sysroot"))
	      "/lib/rustlib/src/rust/src"))


(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'whitespace-mode)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(define-key rust-mode-map (kbd "C-c C-r") #'rust-run)
(setq company-tooltip-align-annotations t)

(provide 'rust-setup)
