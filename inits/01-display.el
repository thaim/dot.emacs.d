;;;モードライン
(column-number-mode 1)		     ;カーソルが何文字目にあるかを表示
(line-number-mode 1)			;カーソルがある行の行数を表示
;(setq display-time-string-forms
;      '((substring year -2) "/" month "/" day " " dayname " " 24-hours ":" minutes) ;時間表示
;      "%Y-%m-%d(%a) %H:%M")
(display-time)
(set-face-foreground 'mode-line-inactive "white") ;モードライン(アクティブでないバッファ)の文字色
(set-face-background 'mode-line-inactive "MediumPurple4") ;モードライン(アクティブでないバッファ)の背景色


;;同一バッファ名をディレクトリ名で区別
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq frame-title-format "%b@Emacs")	;タイトルにバッファ名を表示
(tool-bar-mode 0)			;ツールバーを表示しない
(menu-bar-mode -1)		     ;メニューバーを表示しない
(setq visible-bell t)		     ;警告音の代わりに画面をフラッシュ
(setq truncate-lines t)		     ;通常画面での文字の折り返しの制御
(setq truncate-partial-width-windows t)	;画面を縦に分割した時の文字の折り返しの制御
(global-hl-line-mode 1)			;現在の行に色をつける
(setq hl-line-face 'underline)		;現在の行の強調に下線を利用
(set-face-background 'hl-line "darkolivegreen")	;現在の行につける色の指定
(show-paren-mode 1)				;対応する括弧を強調表示
(setq-default show-trailing-whitespace t)	;行末の空白を強調表示
(savehist-mode 1)			;履歴を次回Emacs起動時にも保存
(setq history-length 1000)		;履歴の保存数

;;以前開いたファイルでのカーソルの位置を保存
(require 'saveplace)
(setq-default save-place t)
(custom-set-variables
 '(save-place-file (expand-file-name "cache/places" user-emacs-directory)))

(setq kill-whole-line t)		;C-kで改行も含めて切り取り
(which-func-mode 1) 			;現在の関数名を常に表示
(setq which-func-modes t)		;すべてのメジャーモードに対してwhich-func-modeを適用する
(delete (assoc 'which-func-mode mode-line-format) mode-line-format) ;画面上部に関数名を表示
(setq-default header-line-format '(which-func-mode ("" which-func-format)))
(delete-selection-mode 1)		; regionを選択時に[BS]orテキスト入力で選択範囲の削除
;; regionの色
(setq transient-mark-mode t)
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "black")



;;;;画面表示関連
;;;フェイス
;(if window-system
;    (global-font-lock-mode t)
;  )
(setq font-lock-support-mode
      '((emacs-lisp-mode . jit-lock-mode)
;	(c++-mode . fast-lock-mode)
	(t . jit-lock-mode)))
(set-face-foreground 'font-lock-comment-face "DarkOrange") ;コメントの色
(set-face-foreground 'font-lock-function-name-face "LightSkyBlue") ;nameの色
;; ;(set-face-foreground 'font-lock--face "") ;テンプレ

;;;色に関する設定
(if (boundp 'window-system)
    (setq initial-frame-alist
          (append (list
                   '(foreground-color . "azure3") ; 文字が白
                   '(background-color . "black")  ; 背景は黒
                   '(border-color     . "black")
                   '(mouse-color      . "white")
                   '(cursor-color     . "white")
;                   '(cursor-type      . box)
;                   '(menu-bar-lines . 1)
					;15.2 フォントの設定 (2008/04/16) で設定したフォントを使用
;                   '(font . "my-fontset")
					; 東雲なら shinonome16-fontset などを指定
                   '(vertical-scroll-bars . nil) ; スクロールバーはいらない
                   '(width . 170)		 ; ウィンドウ幅
                   '(height . 70)		 ; ウィンドウの高さ
                   '(top . 10)			 ; 表示位置
                   '(left . 700)		 ; 表示位置
		   '(alpha . (80 80 50 30)) ; 背景の透明度(通常,非アクティブ,移動,リサイズ)
                   )
                  initial-frame-alist)))
(set-frame-parameter nil 'alpha '70)
(setq default-frame-alist initial-frame-alist)


;;;モード
;;ファイルとの関連付け
;;appendを用いて記述するとなぜか関係無い所でエラーが起こる．現在原因究明中

(setq auto-mode-alist (cons (cons "\\.java$" 'java-mode) auto-mode-alist))
(setq auto-mode-alist (cons (cons "\\.php$" 'php-mode) auto-mode-alist))
(setq auto-mode-alist (cons (cons "\\.js$" 'js2-mode) auto-mode-alist))
(setq auto-mode-alist (cons (cons "\\.howm$" 'howm-mode) auto-mode-alist))
;(autoload 'html-helper-mode "html-helper-mode" "Yet HTML" t)
