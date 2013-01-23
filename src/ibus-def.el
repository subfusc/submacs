; -*- coding: utf-8 -*-
;; IBUS mode for emacs
;; requires yum install emacs-ibus

(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)
(setq ibus-agent-file-name "/usr/libexec/ibus-el-agent")
(setq ibus-cursor-color '("white" "blue" "limegreen"))

(provide 'ibus-def)
