;;; howm
(leaf howm
  :ensure t
  :bind
  ("C-c , ," . howm-menu)
  :custom
  (howm-directory . "~/Dropbox/documents/howm") ;howmディレクトリ
  (howm-file-name-format . "%Y/%m/%Y-%m-%d-%H%M%S.howm")
  (howm-keyword-file . "~/Dropbox/documents/howm/.howm-keys") ;キーワードリスト
  ; howm-history-file "~/docs/howm/history"
  ; setq-default howm-directory "~/docs/howm/"
  (howm-list-title . nil) ;リンクファイルでは大文字小文字を区別しない
  (howm-list-recent-title . t) ;最近のメモ一覧にタイトルを表示
  (howm-list-all-title . t) ;全メモ一覧にタイトルを表示
  (howm-menu-lang . 'ja) ;日本語メニュー
  (howm-menu-expiry-hours . 2) ;メニューを2時間キャッシュ
  (howm-menu-schedule-days-before . 21) ;メニューの予定表の表示範囲
  (howm-menu-schedule-days . 7) ;スケジュールを表示する日数
  (howm-view-summary-persistent . nil) ;RET でファイルを開く際, 一覧バッファを消す.C-u RET なら残る.
  (howm-todo-menu-types . "[-+~!]") ;完了済みToDoは非表示
)

;; 内容が 0 ならファイルごと削除する
(if (not (memq 'delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'delete-file-if-no-contents after-save-hook)))
(defun delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
         (string-match "\\.howm" (buffer-file-name (current-buffer)))
         (= (point-min) (point-max)))
    (delete-file
     (buffer-file-name (current-buffer)))))



;;; org-mode

(leaf org
  ensure: t
  :mode ("\\.howm$")
  :hook
  (org-mode-hook . howm-mode)
  :custom
  ; orgファイルを開いたときは第2レベルまで開いた状態にする
  ; https://orgmode.org/manual/Initial-visibility.html
  (org-startup-folded . 'show2levels)
  )
