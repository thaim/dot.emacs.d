;;;キーバインド関連
(global-set-key [F1] 'help-for-help)	      ;[F1]でヘルプ
(global-set-key "\C-h" 'backward-delete-char) ;[C-h]で一文字消去したい場合
(global-set-key "\C-m" 'newline-and-indent)   ;[C-m]で改行+インデント
(windmove-default-keybindings)		      ;分割ウインドウを[Shift + カーソルキー]で移動
(global-set-key [(control t)] '(lambda () (interactive) (recenter 3))) ;現在のカーソル位置を先頭に
(global-set-key "\C-xp" (lambda () (interactive) (other-window -1))) ;分割ウインドウを逆順に移動
(global-set-key [(ctrl up)] '(lambda (arg) (interactive "p") (shrink-window (- arg)))) ;Ctrl-↑でフレームサイズの縦幅を増加
(global-set-key [(ctrl down)] '(lambda (arg) (interactive "p") (shrink-window arg))) ;Ctrl-↓でフレームサイズの縦幅を減少
(global-set-key [(ctrl right)] '(lambda (arg) (interactive "p") (shrink-window-horizontally (- arg)))) ;Ctrl-→でフレームサイズの横幅を増加
(global-set-key [(ctrl left)] '(lambda (arg) (interactive "p") (shrink-window-horizontally arg))) ;Ctrl-←でフレームサイズの横幅を減少
(global-set-key "\C-ch" 'info-lookup-symbol)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-cg" 'imenu)
(global-set-key "\C-cd" 'my-insert-date) ;日付スタンプ
(global-set-key "\C-cs" 'my-insert-time) ;時刻スタンプ
(global-set-key "\C-c\C-i" 'indent-right)
(global-set-key "\C-ci" 'hippie-expand)
