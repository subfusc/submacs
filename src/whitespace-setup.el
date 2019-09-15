;; -*- coding: utf-8 -*-
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))

(custom-set-variables
 '(whitespace-line-column 100))

(custom-set-faces
 '(my-long-line-face ((((class color)) (:background "red"))) t)
 '(whitespace-line ((t (:background "red")))))

(provide 'whitespace-setup)
