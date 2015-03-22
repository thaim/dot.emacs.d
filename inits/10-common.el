;;;; プログラミング共通の設定

;;; yasnippet
;; 入力補完
(el-get-bundle yasnippet
  (yas-global-mode 1))

;; (el-get-bundle yasnippet-bundle)
;; (require 'yasnippet) ;; not yasnippet-bundle
;; ;; (yas/initialize)
;; ;; (yas/load-directory "/media/share/AppData/.emacs.d/elisp/yasnippet-0.6.1c/snippets")



;; デバッグ設定
;; これを設定するとバグになる
;; howmでリンクを飛べなくなる
;;(setq debug-on-error t)
