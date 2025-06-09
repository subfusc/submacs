(deftheme reduced-cyberpunk
  "Should be cyberpunk inspired without being to harsh.")

(let
		((default-fg-color "#eee")
		 (inversed-fg-color "#000")
		 (default-bg-color "#111")
		 (inversed-bg-color "#fff")
		 (mode-line-active "#7a7305")
		 (lpink "#facdda")
		 (lblue "#d1d8dc")
		 (lgreen "#c5ecb3")
		 (lyellow "#f5e89c")
		 (lepurple "#9090e9")
		 (lepink "#e7aba1")
		 (lered "#e27443")
		 (cyberpunk-legendary "#ff9531")
		 (cyberpunk-purple "#a228f5")
		 (cyberpunk-yellow "#fcee0a")
		 (cyberpunk-yellow-reduced "#aea407")
		 (cyberpunk-red "#ff5c54")
		 (cyberpunk-red-background "#33292b")
		 (cyberpunk-light-blue "#00f0ff"))


	;; Comments
	(custom-theme-set-faces
	 'reduced-cyberpunk

	 ;; Default settings
	 `(default ((t (:background ,default-bg-color :foreground ,default-fg-color :slant normal :weight regular :height 105 :width normal :foundry "UKWN" :family "Adwaita Mono"))))
	 `(cursor ((t (:background ,cyberpunk-red))))
	 `(error ((t (:foreground ,cyberpunk-red))))
	 `(warning ((t (:foreground ,cyberpunk-yellow))))

	 ;; Font related
	 '(fixed-pitch ((t (:family "Monospace"))))
	 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
	 `(escape-glyph ((t (:weight bold :foreground ,cyberpunk-red))))
	 `(homoglyph ((t (:weight bold :foreground ,cyberpunk-red))))

	 ;; Interactiveness
	 `(minibuffer-prompt ((t (:foreground ,cyberpunk-red))))
	 `(highlight ((t (:background ,cyberpunk-yellow :foreground ,inversed-fg-color :underline nil))))
	 `(region ((t (:extend t :background ,cyberpunk-red-background))))
	 `(shadow ((t (:foreground ,cyberpunk-yellow-reduced))))
	 `(secondary-selection ((t (:tend t :background ,cyberpunk-light-blue :foreground ,default-fg-color))))
	 `(trailing-whitespace ((t (:background ,cyberpunk-red))))
	 `(show-paren-match ((t (:background ,cyberpunk-yellow :foreground ,inversed-fg-color))))

	 ;; Code values
	 '(font-lock-bracket-face ((t (:inherit (font-lock-punctuation-face)))))
	 `(font-lock-builtin-face ((t (:foreground ,cyberpunk-legendary))))
	 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
	 `(font-lock-comment-face ((t (:foreground ,lgreen))))
	 `(font-lock-constant-face ((t (:foreground ,lyellow))))
	 '(font-lock-delimiter-face ((t (:inherit (font-lock-punctuation-face)))))
	 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
	 '(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
	 '(font-lock-escape-face ((t (:inherit (font-lock-regexp-grouping-backslash)))))
	 '(font-lock-function-call-face ((t (:inherit (font-lock-function-name-face)))))
	 `(font-lock-function-name-face ((t (:foreground ,cyberpunk-yellow))))
	 `(font-lock-keyword-face ((t (:weight bold :foreground ,cyberpunk-light-blue))))
	 '(font-lock-negation-char-face ((t nil)))
	 '(font-lock-number-face ((t nil)))
	 '(font-lock-misc-punctuation-face ((t (:inherit (font-lock-punctuation-face)))))
	 '(font-lock-operator-face ((t nil)))
	 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
	 '(font-lock-property-name-face ((t (:inherit (font-lock-variable-name-face)))))
	 '(font-lock-property-use-face ((t (:inherit (font-lock-property-name-face)))))
	 '(font-lock-punctuation-face ((t (:background "#00ff00"))))
	 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
	 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
	 `(font-lock-string-face ((t (:foreground ,lepurple))))
	 `(font-lock-type-face ((t (:weight bold :foreground ,cyberpunk-red))))
	 `(font-lock-variable-name-face ((t (:foreground ,lered))))
	 '(font-lock-variable-use-face ((t (:inherit (font-lock-variable-name-face)))))
	 `(font-lock-warning-face ((t (:foreground ,cyberpunk-red))))

	 ;; Other stuff
	 `(button ((t (:foreground ,inversed-fg-color :background ,cyberpunk-yellow-reduced))))
	 `(link ((t (:underline (:color ,inversed-fg-color :style line :position nil) :foreground ,cyberpunk-yellow))))
	 `(link-visited ((t (:underline (:color ,default-fg-color :style line :position nil) :foreground ,cyberpunk-yellow-reduced))))
	 `(fringe ((t (:background ,default-bg-color))))
	 '(header-line ((t (:foreground "#e7f6da" :background "#303030"))))
	 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))

	 ;; Modeline
	 `(mode-line ((t (:foreground ,inversed-fg-color :background ,cyberpunk-yellow-reduced))))
	 '(mode-line-buffer-id ((t (:weight bold))))
	 '(mode-line-emphasis ((t (:weight bold))))
	 '(mode-line-highlight
		 ((((supports :box t) (class color grayscale) (min-colors 88)) (:box (:line-width (2 . 2) :color "grey40" :style released-button)))
			(t (:inherit (highlight)))))
	 `(mode-line-inactive ((t (:foreground ,default-fg-color :background ,cyberpunk-red-background))))

	 ;; Search
	 `(isearch ((t (:foreground ,inversed-fg-color  :background ,cyberpunk-yellow))))
	 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1"))
									 (((class color) (min-colors 88) (background dark)) (:background "red4"))
									 (((class color) (min-colors 16)) (:background "red"))
									 (((class color) (min-colors 8)) (:background "red"))
									 (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
	 `(lazy-highlight ((t (:foreground ,inversed-fg-color :background ,cyberpunk-yellow))))
	 `(match ((((class color) (min-colors 88) (background light)) (:background "khaki1"))
						(((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3"))
						(((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow"))
						(((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue"))
						(((type tty) (class mono)) (:inverse-video t)) (t (:background ,cyberpunk-yellow))))
	 '(next-error ((t (:inherit (region)))))
	 '(query-replace ((t (:inherit (isearch)))))

	 ;; Flymake
	 `(flymake-error ((t (:underline (:color "#0f0")))))
	 '(flymake-warning ((t (:underline (:color "#0000ff" :style wave)))))
	 '(flymake-note ((t (:underline (:color "#00ff00" :style wave)))))

	 ;; Flycheck
	 `(flycheck-error ((t (:underline (:color ,cyberpunk-red :style wave)))))
	 `(flycheck-warning ((t (:underline (:color ,cyberpunk-yellow)))))
	 `(flycheck-info ((t (:underline (:color ,lgreen)))))
	 `(flycheck-fringe-error ((t (:foreground ,cyberpunk-red))))
	 `(flycheck-fringe-warning ((t (:foreground ,cyberpunk-yellow))))
	 `(flycheck-fringe-info ((t (:foreground ,lgreen))))))

(custom-set-variables
 '(flycheck-mode-line-color nil))

(provide-theme 'reduced-cyberpunk)
