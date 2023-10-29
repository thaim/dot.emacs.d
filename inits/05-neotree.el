;;; neotree

;; neotreeで利用するアイコンセット
(leaf all-the-icons
  :ensure t
  :config
  (unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts)) ;; 初回はM-x all-the-icons-install-fontsでインストールする
  )

(leaf neotree
  :ensure t
  :config
  (setq neo-show-hidden-files t) ;; 隠しファイルをデフォルトで表示
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind
  (([f8] . 'neotree-toggle))
  )



