;;; インストールパスの設定.emacsのバージョンごとのディレクトリに作成する
;; el-get経由はv24.4.1/el-get, elpa経由はv24.4.1/elpaに作成する
(let ((versioned-dir (locate-user-emacs-file (format "v%s" emacs-version))))
  (setq-default el-get-dir (expand-file-name "el-get" versioned-dir)
                package-user-dir (expand-file-name "elpa" versioned-dir)))

;; package-selected-packages は custom.elに追記する
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;; leaf.elのセットアップ
(eval-and-compile
  (customize-set-variable
   'package-archives '(("org"   . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu"   . "https://elpa.gnu.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))

(leaf leaf
  :config
  ;; leafで書かれたinit.elの構造を表示してくれる。 M-x leaf-tree-mode で実行する。
  ;; https://qiita.com/conao3/items/347d7e472afd0c58fbd7#leaf-tree
  (leaf leaf-tree
    :ensure t
    :custom ((imenu-list-size . 30)
             (imenu-list-poisition . 'left)))

  ;; マクロを読み取り専用のバッファに展開する
  ;; https://qiita.com/conao3/items/347d7e472afd0c58fbd7#macrostep
  (leaf macrostep
    :ensure t
    :bind
    (("C-c e" . macrostep-expand))
  )
)

;;; init-loaderのロード
(leaf init-loader
  :ensure t
  )

(init-loader-load (locate-user-emacs-file "inits"))
