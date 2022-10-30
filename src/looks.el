;; -*- coding: utf-8 -*-
;; Mah visual settings and configuration options for my EMACS

(tool-bar-mode -1) ; Remove the icon toolbar
(scroll-bar-mode -1) ; Remove the scrollbars
(global-prettify-symbols-mode 1) ; enable visual conversion of some symbols
(ido-mode 1)

(setq column-number-mode 1)

;; Add preffered theme and colors.
(custom-set-variables
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-dark))))

(provide 'looks)
