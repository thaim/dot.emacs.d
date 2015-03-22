;;;;日本語環境の導入
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;;;フォント
(set-frame-font "ricty-12")
;; (set-fontset-font "fontset-default"
;;         'japanese-jisx0208
;;         '("ＭＳ ゴシック" . "jisx0208-sjis"))

;(set-default-font
; "-*-Osaka-normal-normal-normal-*-10-*-*-*-m-0-iso10646-1")

;; (set-fontset-font (frame-parameter nil 'font)
;; 		  'japanese-jisx0208
;; 		  '("Osaka \-Mono:style=レギュラー一等幅-8" . "unicode-bmp"))

;;; emacsclientから起動したファイルを閉じるときに確認しない
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
