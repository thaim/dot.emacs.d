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

;;; 未保存のバッファを保存してからemacs serverを終了する
(defun save-buffers-kill-emacs-server ()
  (interactive)
  (save-some-buffers)
  (server-edit)
  (kill-emacs))
(global-unset-key (kbd "C-x C-x")) ; exchange-point-and-markの割り当てを解除する
(global-set-key (kbd "C-x C-x C-c") 'save-buffers-kill-emacs-server)
