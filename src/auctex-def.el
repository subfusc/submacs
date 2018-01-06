;; -*- coding: utf-8 -*-
;; Configuration for AuCTeX, because I want PDF not DVI.
(setq TeX-PDF-mode t)

;; Some more KDE friendly configuration options for viewers.
;; Newstyle AUCTEX program selection
(setq TeX-view-program-list '(("Okular" "okular %o") ("Arora" "arora %o")))
(setq TeX-view-program-selection 
      (quote 
       (((output-dvi style-pstricks) "KDE") 
	(output-dvi "xdvi") 
	(output-pdf "Okular") 
	(output-html "Arora"))))

(add-hook 'TeX-mode-hook 'auto-fill-mode)
(provide 'auctex-def)
