;; PROVIDE A SETUP FOR AUTOCOMPLETE
(add-to-list 'load-path (format "%s%s" install_directory "/auto-complete"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (format "%s%s" install_directory "/auto-complete/ac-dict"))
(ac-config-default)

(provide 'autocomplete-def)
