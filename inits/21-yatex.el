;;;;hook設定
;;yatexのモードフック
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

(add-hook 'yatex-mode-hook
	  '(lambda ()
	     (setq fill-column 85)
	     (auto-fill-mode 1)
	     (reftex-mode t)		;RefTeXの起動
	     ))
