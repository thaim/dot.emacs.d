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
           ))
