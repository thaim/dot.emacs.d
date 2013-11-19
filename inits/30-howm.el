;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  howm                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'howm)
(setq howm-menu-lang 'ja)
(global-set-key "\C-c,," 'howm-menu)
;;基本設定?
(mapc
 (lambda (f)
   (autoload f
     "howm" "Hitori Otegaru Wiki Modoki" t))
 '(howm-menu howm-list-all howm-list-recent
             howm-list-grep howm-create
             howm-keyword-to-kill-ring))
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
;; C-cC-c で保存してバッファをキルする(http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?SaveAndKillBuffer)
(defun my-save-and-kill-buffer ()
  (interactive)
  (when (and
         (buffer-file-name)
         (string-match "\\.howm"
                       (buffer-file-name)))
    (save-buffer)
    (kill-buffer nil)))
(eval-after-load "howm"
  '(progn
     (define-key howm-mode-map
       "\C-c\C-c" 'my-save-and-kill-buffer)))
;;パス設定
(setq howm-directory "/media/share/AppData/howm")		      ;howmディレクトリ
(setq howm-keyword-file "/media/share/AppData/howm/.howm-keys") ;キーワードリスト
;;変更設定
(setq howm-list-title nil)	  ;リンクファイルを大文字小文字を区別しない 
(setq howm-list-recent-title t)	  ;「最近のメモ」一覧時にタイトル表示
(setq howm-list-all-title t)	  ;全メモ一覧時にタイトル表示
(setq howm-menu-expiry-hours 2)	  ;メニューを 2 時間キャッシュ
(add-hook 'howm-mode-on-hook 'auto-fill-mode) ;howm の時は auto-fill で
(setq howm-view-summary-persistent nil)	      ;RET でファイルを開く際, 一覧バッファを消す.C-u RET なら残る.
(setq howm-menu-schedule-days-before 21)      ;メニューの予定表の表示範囲
(setq howm-menu-schedule-days 7)	      ;スケジュールを表示する日数
