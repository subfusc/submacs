;; coding: utf-8
(defun any (list)
  "A simple check to see if there are any non nil values in the list"
  (let ((listc list) (found nil))
    (while (and listc (not found))
      (if (car listc) (setq found \t) (pop listc)))
    found))

(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(defun extend-emacs-executable-paths (path)
  "Add an executable path to both emacs internal OS and exec paths"
  (unless (string-match path (getenv "PATH"))
    (setenv "PATH" (concat path ":" (getenv "PATH"))))
  (unless (member path exec-path)
    (push path exec-path)))

(provide 'submacs-functions)
