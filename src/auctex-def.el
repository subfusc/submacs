;; -*- coding: utf-8 -*-
;; Configuration for AuCTeX, because I want PDF not DVI.
(add-to-list 'load-path (format "%s%s" install_directory "auctex"))
(add-to-list 'load-path (format "%s%s" install_directory "auctex/preview"))


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


;; (add-hook 'latex-mode-hook (lambda () (flyspell-mode 1)))

;; (defun fd-switch-dictionary()
;;   (interactive)
;;   (let* ((dic ispell-current-dictionary)
;;     	 (change (if (string= dic "nb_NO") "en_GB" "nb_NO")))
;;     (ispell-change-dictionary change)
;;     (message "Dictionary switched from %s to %s" dic change)))

;; (global-set-key (kbd "<f8>")   'fd-switch-dictionary)
(provide 'auctex-def)
