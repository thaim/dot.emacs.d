;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  elscreen                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq elscreen-prefix-key "\C-o")	;elscreenのprefixキー
(require 'elscreen)
(elscreen-start)
(define-key elscreen-map "h" 'elscreen-previous)
(define-key elscreen-map "\C-h" 'elscreen-previous)
(define-key elscreen-map [C-A-right] 'elscreen-previous)
(define-key elscreen-map "l" 'elscreen-next)
(define-key elscreen-map "\C-l" 'elscreen-next)
(define-key elscreen-map [C-A-left] 'elscreen-next)
(setq elscreen-tab-display-kill-screen nil) ;タブの左端の閉じるボタンを表示しない
(load "elscreen" "ElScreen" t)
(require 'elscreen-plus nil t)
;(require 'elscreen-howm)		;elscreen-howmの導入(howmのページを新しいscreenで開く)
(require 'elscreen-dired)		;elscreen-diredの導入
