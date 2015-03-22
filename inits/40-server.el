;;;; emacsのサーバ機能

;;; emacsclient向け機能
(require 'server)

;;; クライアントを閉じるときに確認プロンプトを出さない
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

(unless (server-running-p)
  (server-start))
