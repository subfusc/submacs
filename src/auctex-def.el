;; -*- coding: utf-8 -*-
;; Configuration for AuCTeX, because I want PDF not DVI.
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
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

(provide 'auctex-def)
