;;auto-complete
;;入力支援
;(require 'auto-complete-config)
;(global-auto-complete-mode 1)

;;anything
;(require 'anything-startup)
;(require 'anything)

;;;auto-async-byte-compile
;;;elispを自動でバイトコンパイル
(el-get-bundle auto-async-byte-compile)
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
