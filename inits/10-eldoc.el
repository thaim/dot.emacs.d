;; ある程度上手くいく
;; (el-get-bundle eldoc-extension)
;; (require 'eldoc-extension)
;; (add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

;; エラーの数が減るがまだ残る
;; (el-get-bundle! eldoc-extension)
;; (add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

(el-get-bundle! eldoc-extension)
(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
