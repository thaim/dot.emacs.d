;;; 各プログラミング言語に必要な共通設定
;;; そのうち、各言語設定の後で対応する必要があるもの

;; lspのセットアップ
;; hookで各言語のセットアップが必要？
(use-package lsp-mode
  :ensure t
  :init (yas-global-mode)
  :hook (rust-mode . lsp)
  :bind ("C-c h" . lsp-describe-thing-at-point)
  :custom (lsp-rust-server 'rust-analyzer))


(use-package lsp-ui
  :ensure t)