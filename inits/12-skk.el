;;;skk
(el-get-bundle 'ddskk)
(setq default-input-method "japanese-skk")
(setq-default skk-kutouten-type 'en)		      ;句読点をピリオド、コンマに

;;パス設定
;(setq skk-tut-file "~/.emacs.d/elisp/ddskk") ;チュートリアルパス
(setq skk-large-jisyo "~/.emacs.d/etc/skk/SKK-JISYO.L")	      ;Large辞書パス
;;(setq skk-jisyo "~/.skk-jisyo")	      ;個人用辞書パス
;(setq Info-default-directory-list (cons "/media/share/AppData/.emacs.d/info" Info-default-directory-list)) ;infoディレクトリの

;;キーバインド設定
(global-set-key "\C-x\C-j" 'skk-mode)		      ;skkモードキー
(global-set-key "\C-xj" 'skk-mode)		      ;skkモードキー
(global-set-key "\C-xt" 'skk-tutorial)		      ;チュートリアルモードキー
