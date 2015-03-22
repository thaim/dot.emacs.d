(bundle howm
  (setq-default howm-directory "~/Dropbox/documents/howm" ;howmディレクトリ
                howm-file-name-format "%Y/%m/%Y-%m-%H%M%S.howm"
                howm-keyword-file "~/Dropbox/documents/howm/.howm-keys" ;キーワードリスト
;;                howm-history-file "~/docs/howm/history"
                howm-list-title nil     ;リンクファイルでは大文字小文字を区別しない
                howm-list-recent-title t ;最近のメモ一覧にタイトルを表示
                howm-list-all-title t    ;全メモ一覧にタイトルを表示
                howm-menu-lang 'ja      ;日本語メニュー
                howm-menu-expiry-hours 2 ;メニューを2時間キャッシュ
                howm-menu-schedule-days-before 21 ;メニューの予定表の表示範囲
                howm-menu-schedule-days 7 ;スケジュールを表示する日数
                howm-view-summary-persistent nil ;RET でファイルを開く際, 一覧バッファを消す.C-u RET なら残る.
                )
  (setq auto-mode-alist (append '(("\\.howm$" . rdoc-mode)) auto-mode-alist))
  (add-hook 'howm-mode-on-hook 'auto-fill-mode) ;howm の時は auto-fill で
  (global-set-key (kbd "C-c , ,") #'howm-menu))

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



;; (bundle howm
;;   (setq-default howm-directory "~/Dropbox/documents/howm" ;howmディレクトリ
;;                 howm-file-name-format "%Y/%m/%Y-%m-%H%M%S.howm"
;;                 howm-keyword-file "~/Dropbox/documents/howm/.howm-keys" ;キーワードリスト
;; ;;                howm-history-file "~/docs/howm/history"
;;                 ;; howm-list-title nil     ;リンクファイルでは大文字小文字を区別しない
;;                 ;; howm-list-recent-title t ;最近のメモ一覧にタイトルを表示
;;                 ;; howm-list-all-title t    ;全メモ一覧にタイトルを表示
;;                 ;; howm-menu-lang 'ja      ;日本語メニュー
;;                 ;; howm-menu-expiry-hours 2 ;メニューを2時間キャッシュ
;;                 ;; howm-menu-schedule-days-before 21 ;メニューの予定表の表示範囲
;;                 ;; howm-menu-schedule-days 7 ;スケジュールを表示する日数
;;                 ;; howm-view-summary-persistent nil ;RET でファイルを開く際, 一覧バッファを消す.C-u RET なら残る.
;;                 )
;;   (setq auto-mode-alist (append '(("\\.howm$" . rdoc-mode)) auto-mode-alist))
;; ;;  (add-hook 'howm-mode-on-hook 'auto-fill-mode) ;howm の時は auto-fill で
;;   (global-set-key (kbd "C-c , ,") #'howm-menu))

;;;; 自分の断片
;; ;; 内容が 0 ならファイルごと削除する
;;   (if (not (memq 'delete-file-if-no-contents after-save-hook))
;;     (setq after-save-hook
;;           (cons 'delete-file-if-no-contents after-save-hook)))
;; (defun delete-file-if-no-contents ()
;;   (when (and
;;          (buffer-file-name (current-buffer))
;;          (string-match "\\.howm" (buffer-file-name (current-buffer)))
;;          (= (point-min) (point-max)))
;;     (delete-file
;;      (buffer-file-name (current-buffer)))))


;;;; original
;; (bundle howm
;;   (setq-default howm-directory "~/docs/howm/"
;;                 howm-file-name-format "%Y/%m/%Y-%m-%dT%H%M%S.howm"
;;                 howm-keyword-file "~/docs/howm/keys"
;;                 howm-history-file "~/docs/howm/history"
;;                 howm-menu-lang 'en)
;;   (setq auto-mode-alist (append '(("\\.howm$" . rdoc-mode)) auto-mode-alist))
;;   (global-set-key (kbd "C-c , ,") #'howm-menu)
;;   (with-eval-after-load-feature 'howm-vars
;;        (set-face-background 'howm-view-name-face "DimGray")))
