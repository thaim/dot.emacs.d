;;; neotree

;; neotreeで利用するアイコンセット
;; M-x all-the-icons-install-fontsを実行する必要あり
(el-get-bundle! all-the-icons)
(el-get-bundle! neotree)



(global-set-key [f8] 'neotree-toggle)

;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
