;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  elscreen                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(leaf elscreen
  :ensure t
  :config
  (setq elscreen-prefix-key "\C-o")           ;; elscreenのprefixキー
  (setq elscreen-tab-display-kill-screen nil) ;; タブの左端の閉じるボタンを表示しない
  (elscreen-start)
  (define-key elscreen-map (kbd "C-h") 'elscreen-previous)
  (define-key elscreen-map (kbd "C-l") 'elscreen-next)

  ;;; elscreenのタブをemacs再起動後も継続する
  (leaf elscreen-persist
    :ensure t
    :config
    (setq elscreen-persist-file (expand-file-name "cache/elscreen" user-emacs-directory))
    (elscreen-persist-mode 1)
    )
  )


;; (require 'elscreen-plus nil t)		;screenの一覧をエコー領域に表示
;; (require elscreen-howm)		;elscreen-howmの導入(howmのページを新しいscreenで開く)
;; ;(require elscreen-dired)		;elscreen-diredの導入
