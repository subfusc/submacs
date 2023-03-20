(require 'submacs-functions)

;; Custom other-window implementation designed to skip uninteresting
;; buffers when doing keyboard navigation

(defvar ignore-windows-of-name '("Treemacs" "LSP Symbols"))

(defadvice other-window (before other-window-ignore-windows-of-type activate)
  (if (and (= 1 (ad-get-arg 0)) (called-interactively-p "interactive"))
      (let* ((win-list (cdr (window-list)))
             (skip-num 1)
             (found nil))
        (while (and win-list (not found))
          (let ((bname (buffer-name (window-buffer (pop win-list)))))
            (if (any (mapcar #'(lambda (re) (string-match re bname)) ignore-windows-of-name))
                (setq skip-num (+ skip-num 1))
              (setq found \t))))
        (ad-set-arg 0 skip-num))))

(provide 'submacs-navigation)
