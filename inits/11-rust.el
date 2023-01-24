;; Rust開発に必要なパスのセットアッップ
(add-to-list 'exec-path (expand-file-name "~/.local/bin")) ; rust-analyzerのインストールパス
(add-to-list 'exec-path (expand-file-name "~/.cargo/bin")) ; cargoのインストールパス


(use-package rust-mode
  :ensure t
  :custom rust-format-on-save t)

(use-package cargo
  :ensure t
  :hook (rust-mode . cargo-minor-mode))


;; LSPの設定は 12-lsp.el で実施
