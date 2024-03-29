; 辞書ファイルを事前に ~/.emacs.d/etc/skk/ 以下に配置する。
; 辞書フィアルは https://github.com/skk-dev/dict から取得する。
; geo/jinmei/propernoun など

(leaf ddskk
  :ensure t
  :bind (("C-x C-j" . skk-mode)
         ("C-x j" . skk-mode)
         ("C-x t" . 'skk-tutorial)
         )
  :custom (
           (default-input-method "japanese-skk")
           (skk-kutouten-type . 'jp) ;句読点には「、。」を利用する (デフォルト挙動だが明記する)
           (skk-tut-file . "~/.emacs.d/elisp/ddskk") ;チュートリアルパス
           (skk-large-jisho . "~/.emacs.d/etc/skk/SKK-JISYO.L") ;Large辞書パス
           (skk-jisyo . "~/.emacs.d/cache/skk/.skk-jisyo") ;個人用辞書パス
           (skk-extra-jisyo-file-list . (mapcar (lambda (f) (concat "~/.emacs.d/etc/skk/" f))
                                                (directory-files "~/.emacs.d/etc/skk/" nil "SKK-JISYO\\.[a-z]+"))) ;;追加辞書
           ))
