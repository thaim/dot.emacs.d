;;; インストールパスの設定.emacsのバージョンごとのディレクトリに作成する
;; el-get経由はv24.4.1/el-get, elpa経由はv24.4.1/elpaに作成する
(let ((versioned-dir (locate-user-emacs-file (format "v%s" emacs-version))))
  (setq-default el-get-dir (expand-file-name "el-get" versioned-dir)
                package-user-dir (expand-file-name "elpa" versioned-dir)))

(setq package-archive
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))

;; proxy configuration
;; (setq url-proxy-services
;;       '(("http"  . "proxy.example.com:8080")
;;         ("https" . "proxy.example.com:8080")))

;; bundle (an El-Get wrapper)
(setq-default el-get-emacswiki-base-url
              "https://raw.githubusercontent.com/emacsmirror/emacswiki.org/master/")
(add-to-list 'load-path (expand-file-name "bundle" el-get-dir))

;; bundleのロード.el-get/bundleが存在しなければインストール・ロードする
(unless (require 'bundle nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/tarao/bundle-el/master/bundle-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path (locate-user-emacs-file "etc/recipes"))


;; use-package がなければインストールして有効化する
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)


;;; init-loaderのロード
(bundle! emacs-jp/init-loader
	 ;; load
	 (setq-default init-loader-show-log-after-init t
		       init-loader-byte-compile t)
	 (init-loader-load (locate-user-emacs-file "inits"))
	 ;; hide compilation results / コパイルログは表示する
;;	 (let ((win (get-buffer-window "*Compile-Log*")))
;;	   (when win (delete-window win)))
     )

;;; インストール/実行バージョンの固定
;; アップデートする場合はM-x el-get-update-allを実行する
;;(el-get-bundle tarao/el-get-lock)
;;(el-get-lock)
