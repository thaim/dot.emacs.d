;;;;hook設定
;;yatexのモードフック
(add-hook 'yatex-mode-hook
	  '(lambda ()
	     (setq fill-column 85)
	     (auto-fill-mode 1)
	     (reftex-mode t)		;RefTeXの起動
	     ))
