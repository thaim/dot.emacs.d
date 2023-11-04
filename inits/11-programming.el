;;;;
;;;; common
;;;;

;; GitHub Copilot
(leaf copilot
  :el-get (copilot
           :type github
           :pkgname "zerolfx/copilot.el"
           )
  :config
  (leaf editorconfig :ensure t)
  (leaf s :ensure t)
  (leaf dash :ensure t)
  (defun my/copilot-tab ()
    (interactive)
    (or (copilot-accept-completion)
        (indent-for-tab-command)))
  (with-eval-after-load 'copilot
    (define-key copilot-mode-map (kbd "<tab>") #'my/copilot-tab))
  )

;; lsp-mode
(leaf lsp-mode
  :ensure t
  :init (yas-global-mode)
  :hook
  (rust-mode-hook . lsp)
  (go-mode-hook . lsp)
  :bind ("C-c h" . lsp-describe-thing-at-point)
  :custom (lsp-rust-server 'rust-analyzer))


(leaf lsp-ui
  :ensure t
  :hook
  (lsp-mode-hook . lsp-ui-mode)
  :custom
  (lsp-ui-doc-enable . t)
  )

;; for common web (JavaScript/HTML/CSS)
(leaf web-mode
  :ensure t
  :mode "\\.js$" "\\.html$" "\\.css$"
  :custom
  ; インデント幅をスペース2つに設定
  (web-mode-markup-indent-offset . 2)
  (web-mode-code-indent-offset . 2)
  (web-mode-css-indent-offset . 2)
  )


;;;;
;;;; for dockerfile
;;;;
(leaf dockerfile-mode
  :ensure t
  )


;;;;
;;;; for golang
;;;;

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/")) ; goのインストールパス
(add-to-list 'exec-path (expand-file-name "~/bin/")) ;; go get で入れたツールのパスを通す


(leaf go-mode
  :ensure t
  :after copilot flycheck
  :bind
  ("M-." . godef-jump)  ; 関数定義にジャンプ
  ("M-*" . pop-tag-mark)  ; ジャンプ元に戻る
  :hook
  (before-save-hook . gofmt-before-save)
  (go-mode-hook . lsp-deferred)
  (go-mode-hook . copilot-mode)
  (go-mode-hook . flycheck-mode)
  :custom
  (indent-tabs-mode . nil)
  (tab-width . 4)
  (c-basic-offset . 4)
  :config
  (leaf company-go
    :ensure t)
  )

(add-hook 'go-mode-hook (lambda()
       (add-hook 'before-save-hook' 'gofmt-before-save)
       (local-set-key (kbd "M-.") 'godef-jump)
       (set (make-local-variable 'company-backends) '(company-go))
       (setq indent-tabs-mode t)    ; タブを利用
       (setq c-basic-offset 4)    ; tabサイズを4にする
       (setq tab-width 4)))

;; company-modeとの連携してコード補完する
(add-hook 'go-mode-hook (lambda()
      (company-mode)
      (setq company-transformers '(company-sort-by-backend-importance)) ;; ソート順
      (setq company-idle-delay 0) ; 遅延なしにすぐ表示
      (setq company-minimum-prefix-length 3) ; デフォルトは4
      (setq company-selection-wrap-around t) ; 候補の最後の次は先頭に戻る
      (setq completion-ignore-case t)
      (setq company-dabbrev-downcase nil)
      (global-set-key (kbd "C-M-i") 'company-complete)
      ;; C-n, C-pで補完候補を次/前の候補を選択
      (define-key company-active-map (kbd "C-n") 'company-select-next)
      (define-key company-active-map (kbd "C-p") 'company-select-previous)
      (define-key company-active-map (kbd "C-s") 'company-filter-candidates) ;; C-sで絞り込む
      (define-key company-active-map [tab] 'company-complete-selection) ;; TABで候補を設定
      (define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete) ;; 各種メジャーモードでも C-M-iで company-modeの補完を使う
      ))

;;;;
;;;; for groovy
;;;;
(leaf groovy-mode
  :ensure t
  :mode "\\Jenkinsfile$"
  )


;;;;
;;;; for HTML
;;;;
(leaf html-mode
  :mode "\\.html$"
  :hook
  (html-mode-hook . xml-mode)
  )

;;;;
;;;; for TypeScript
;;;;
(leaf typescript-mode
  :ensure t
  )


;;;;
;;;; for markdown
;;;;
(leaf markdown-mode
  :ensure t
  )


;;;;
;;;; for octave
;;;;
(leaf octave-mode
  :mode "\\.m$"
  :hook
  (octave-mode-hook . (lambda ()
                        (abbrev-mode 1)
                        (auto-fill-mode 1)
                        (if (eq window-system 'x)
                            (font-lock-mode 1))))
  )

;;;;
;;;; for php
;;;;
(leaf php-mode
  :ensure t
  )

;;;;
;;;; for protocol buffers
;;;;
(leaf protobuf-mode
  :ensure t
)

;;;;
;;;; for terraform
;;;;

(leaf terraform-mode
  :ensure t
  :after copilot
  :hook
  (terraform-mode-hook . terraform-format-on-save-mode)
  (terraform-mode-hook . lsp-deferred)
  (terraform-mode-hook . copilot-mode)
  )

;;;;
;;;; for Python
;;;;
(leaf lsp-pyright
  :ensure t
  :after python
  :hook
  (python-mode-hook . lsp)
  )

;;;;
;;;; for Ruby
;;;;
(leaf ruby-mode
  ; ruby-mode はemacsに同梱されている
  :config
  (setq ruby-insert-encoding-magic-comment nil) ; 'coding: utf-8'のマジックコメントを自動挿入しない
  )

(leaf haml-mode
  :ensure t
  :after flycheck
  :hook
  (haml-mode-hook . flymake-haml-load)
  )

;;;;
;;;; for Rust
;;;;
(leaf rust-mode
  :ensure t
  :init
  ;; Rust開発に必要なパスのセットアッップ
  (add-to-list 'exec-path (expand-file-name "~/.local/bin")) ; rust-analyzerのインストールパス
  (add-to-list 'exec-path (expand-file-name "~/.cargo/bin")) ; cargoのインストールパス
  :custom ((rust-format-on-save . t))

  (leaf cargo
    :ensure t
    :hook (rust-mode . cargo-minor-mode))
  )

;;;;
;;;; for sql
;;;;
(leaf sql-mode
  :mode "ddl$"
  )

;;;;
;;;; for ansible
;;;;
(leaf ansible
  :ensure t
  :hook
  (ansible-mode-hook . lsp)
  )

;;;;
;;;; for yaml
;;;;
(leaf yaml-mode
  :ensure t
  :config

  ;; インデントをハイライトする
  (leaf highlight-indentation
    :ensure t
    :config
    (set-face-background 'highlight-indentation-face "#e3e3d3")
    (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
    :hook
    (yaml-mode-hook . highlight-indentation-mode)
    )
  )
