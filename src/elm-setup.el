;; coding: utf-8
(require 'elm-mode)
(require 'submacs-functions)

;; Check if nvm exists (in standard location ${HOME}/.nvm)
;; If it does, check for elmLS in there.
(let ((nvm-dir (concat (getenv "HOME")  "/.nvm")))
  (if (file-exists-p nvm-dir)
      (let ((bin-file (car
		       (sort
			(directory-files-recursively nvm-dir "^elm-language-server$")
			'string>))))
	(if bin-file (extend-emacs-executable-paths (file-name-directory bin-file))))))

(provide 'elm-setup)
