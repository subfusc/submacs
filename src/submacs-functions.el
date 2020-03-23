;; coding: utf-8

(defun extend-emacs-executable-paths (path)
  (unless (string-match path (getenv "PATH"))
    (setenv "PATH" (concat path ":" (getenv "PATH"))))
  (unless (member path exec-path)
    (push path exec-path)))

(provide 'submacs-functions)
