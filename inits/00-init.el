;;;;日本語環境の導入
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;;check if target font exist
(defun font-exists-p (font)
  (if (null (x-list-fonts  font)) nil t))

;;;フォント
(if (font-exists-p "HackGen-12")
    (set-frame-font "HackGen-12"))

;;; emacsclientから起動したファイルを閉じるときに確認しない
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
