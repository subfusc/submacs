;; -*- coding: utf-8 -*-
;; Mah visual settings and configuration options for my EMACS

(tool-bar-mode -1) ;; Remove the icon toolbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ;; Remove the scrollbars
(global-prettify-symbols-mode 1) ;; enable visual conversion of some symbols
(setq column-number-mode 0) ;; Char number on bar. Don't need it
(setq standard-ident 2) ;; I like to have 2 "space" indents. I might change it when i get worse eyesight
(menu-bar-mode 0) ;; File-menu bar
(set-frame-parameter nil 'alpha-background 95) ;; Seethrough background
(setq custom-theme-load-path (list "~/.submacs/system/themes/"))

;; Add preffered theme and colors.
(custom-set-variables
 '(tab-width 2) ;; Jebus the default is 8
 '(project-mode-line t)
 '(mode-line-format '("%e"
											mode-line-front-space
											(project-mode-line project-mode-line-format)
											mode-line-frame-identification
											mode-line-buffer-identification "   "
											mode-line-position
											(vc-mode vc-mode) "  "
											mode-line-modes
											mode-line-misc-info
											mode-line-end-spaces))
 '(flycheck-mode-line-color nil)
 '(custom-safe-themes
	 '("4d3c69d08edb99c7500f9395e0f134fbe8b78f2f732a15b5efaac692c9e4da71"
		 default))
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(reduced-cyberpunk)))

;; Font configuration. Use Noto for now as it seems like the most cross distro used one
(custom-set-faces
 '(default ((t (:family "Noto Sans Mono" :foundry "GOOG" :slant normal
                        :weight normal :height 107 :width normal)))))

(if (fboundp 'set-fontset-font)
		(set-fontset-font t '(#x1f000 . #x1faff) ;; We want emojis
											(font-spec :family "Noto Color Emoji")))

;; Configure common Symbol conversions
(setq prettify-symbols-alist '(("lambda" . ?λ)
                               ("->" . ?→)
                               ("->>" . ?↠)
                               ("=>" . ?⇒)
                               ("map" . ?↦)
                               ("sum" . ?∑)
                               ("/=" . ?≠)
                               ("!=" . ?≠)
                               ("==" . ?≡)
                               ("<=" . ?≤)
                               (">=" . ?≥)
                               ("=~" . ?≈)
                               ("!~" . ?≉)
                               ("<=<" . ?↢)
                               (">=>" . ?↣)
                               ("&&" . ?∧)
                               ("||" . ?∨)
                               ("not" . ?¬)))

(defun always-two-in-width-window-split (x)
		(setq split-width-threshold
					(+ 1 (/ (cadddr (assoc 'workarea (car (display-monitor-attributes-list)))) 2))))

(setq window-size-change-functions '(always-two-in-width-window-split))

;; Show matching parenthesis
(require 'paren)
(setq show-paren-style 'parenthesis) ;; can be mixed, expression or parenthesis
(show-paren-mode 1)

(provide 'looks)
