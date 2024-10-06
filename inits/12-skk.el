; 辞書ファイルを事前に ~/.emacs.d/etc/skk/ 以下に配置する。
; 辞書フィアルは https://github.com/skk-dev/dict から取得する。
; geo/jinmei/propernoun など

(leaf ddskk
  :ensure t
  :bind
  ("C-x C-j" . skk-mode)
  ("C-x j" . skk-mode)
  :preface
  (defun get-all-files-in-directory (directory)
    "Get a list of all files in DIRECTORY."
    (when (file-directory-p directory)
      (directory-files-recursively directory "SKK-JISYO\\.[a-z]+" nil t)))
  :config
  (setq skk-extra-jisyo-file-list (get-all-files-in-directory "~/.emacs.d/etc/skk/")) ;;追加辞書
  :custom
  (default-input-method . "japanese-skk")
  (skk-kutouten-type . 'jp) ;句読点には「、。」を利用する (デフォルト挙動だが明記する)
  (skk-large-jisho . "~/.emacs.d/etc/skk/SKK-JISYO.L") ;Large辞書パス
  (skk-jisyo . "~/.emacs.d/cache/skk/.skk-jisyo") ;個人用辞書パス
  )
