(progn
  (require 'package)
  (package-initialize)
  (setq package-check-signature nil)
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ;; Apparently there is a bug ..
  (package-refresh-contents)
  (package-install 'gnu-elpa-keyring-update)
  (setq package-check-signature 'allow-unsigned))
