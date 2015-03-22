;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  elscreen                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(el-get-bundle! elscreen)

(setq elscreen-prefix-key "\C-o")       ;elscreenのprefixキー
(define-key elscreen-map "h" 'elscreen-previous) ;各種ショートカット
(define-key elscreen-map "\C-h" 'elscreen-previous)
(define-key elscreen-map [C-A-right] 'elscreen-previous)
(define-key elscreen-map "l" 'elscreen-next)
(define-key elscreen-map "\C-l" 'elscreen-next)
(define-key elscreen-map [C-A-left] 'elscreen-next)
(setq elscreen-tab-display-kill-screen nil) ;タブの左端の閉じるボタンを表示しない
(elscreen-start)


;;; elscreen-persist
(bundle! elscreen-persist)
(elscreen-persist-mode 1)

;; elscreen configuration file locate in cache directory
(setq elscreen-persist-file (expand-file-name "cache/elscreen" user-emacs-directory))

;; (require 'elscreen-plus nil t)		;screenの一覧をエコー領域に表示
;; (require elscreen-howm)		;elscreen-howmの導入(howmのページを新しいscreenで開く)
;; ;(require elscreen-dired)		;elscreen-diredの導入
