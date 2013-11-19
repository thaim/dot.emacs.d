;;navi2ch
;; (autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)
;; (setq navi2ch-ask-when-exit nil)	; 終了時に訪ねない
;; (setq navi2ch-message-user-name "")	; スレのデフォルト名を使う
;; (setq navi2ch-net-save-old-file-when-aborn nil) ;あぼーんがあったたき元のファイルは保存しない
;; (setq navi2ch-message-ask-before-send nil)	;送信時に訪ねない
;; (setq navi2ch-message-ask-before-kill nil)	;kill するときに訪ねない
;; (setq navi2ch-article-max-buffers 5)		;バッファは 5 つまで
;; (setq navi2ch-article-auto-expunge t)		;navi2ch-article-max-buffers を超えたら古いバッファは消す
;; (setq navi2ch-board-insert-subject-with-diff t) ;Board モードのレス数欄にレスの増加数を表示する。
;; (setq navi2ch-board-insert-subject-with-unread t) ;Board モードのレス数欄にレスの未読数を表示する。
;; (setq navi2ch-article-exist-message-range '(1 . 1000)) ;既読スレはすべて表示
;; (setq navi2ch-article-new-message-range '(1000 . 1))   ;未読スレもすべて表示
;; (setq navi2ch-list-stay-list-window t)		       ;3 ペインモードでみる
;; (setq navi2ch-directory "/media/share/AppData/.navi2ch")	       ;キャッシュファイルなどを保存するディクトリ 
;; (global-set-key "\C-c2" 'navi2ch)		       ;C-c 2 で起動


;;malabar
;; (setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
;; 				  global-semanticdb-minor-mode
;; 				  global-semantic-idle-summary-mode
;; 				  global-semantic-mru-bookmark-mode))
;; ;(semantic-mode 1)
;; (require 'malabar-mode)
;; (setq malabar-groovy-lib-dir "/media/share/AppData/.emacs.d/elisp/malabar/srecode/")
;; ;(setq malabar-groovy-lib-dir "~/.srecode/")
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))


;;flymake
;; (require 'flymake)
;; (add-hook 'c++-mode-hook
;; 	  '(lambda ()
;; 	     (flymake-mode t)))
;; (defcustom flymake-allowed-file-name-masks
;;   '(("\\.c\\'" flymake-simple-make-init)
;;     ("\\.cpp\\'" flymake-simple-make-init)
;;     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup)
;;     ))
;; (defun flymake-cc-init ()
;;   (let* ((temp-file   (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;          (local-file  (file-relative-name
;;                        temp-file
;;                        (file-name-directory buffer-file-name))))
;;     (list "g++" (list "-Wall" "-Wextra" "-fsyntax-only" local-file))))

;;(push '("\\.cc$" flymake-cc-init) flymake-allowed-file-name-masks)
;;(add-hook 'c++-mode-hook
;;          '(lambda ()
;;             (flymake-mode t)))
