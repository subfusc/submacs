;; -*- coding: utf-8 -*-
;; Mah visual settings and configuration options for my EMACS

(tool-bar-mode -1) ;; Remove the icon toolbar
(scroll-bar-mode -1) ;; Remove the scrollbars
(global-prettify-symbols-mode 1) ;; enable visual conversion of some symbols
(setq column-number-mode 0) ;; Char number on bar. Don't need it
(setq standard-ident 2) ;; I like to have 2 "space" indents. I might change it when i get worse eyesight

;; Add preffered theme and colors.
(custom-set-variables
 '(tab-width 2) ;; Jebus the default is 8
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (wombat))))

;; Font configuration. Use Noto for now as it seems like the most cross distro used one
(custom-set-faces
 '(default ((t (:family "Noto Sans Mono" :foundry "GOOG" :slant normal
                        :weight normal :height 107 :width normal)))))

(set-fontset-font t '(#x1f000 . #x1faff) ;; We want emojis
              (font-spec :family "Noto Color Emoji"))

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

;; Show matching parenthesis
(require 'paren)
(setq show-paren-style 'parenthesis) ;; can be mixed, expression or parenthesis
(show-paren-mode 1)

;; Configure how whitespace should behave
(require 'whitespace)

(custom-set-variables
 '(whitespace-style (face empty tabs lines-tail trailing))
 '(whitespace-line-column 100)) ;; How long the lines maximally should be before marking them as too long

(custom-set-faces
 '(my-long-line-face ((((class color)) (:background "red"))) t)
 '(whitespace-line ((t (:background "red")))))

(provide 'looks)
