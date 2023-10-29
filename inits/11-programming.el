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
  (leaf editorconfig
    :ensure t
    )
  (leaf s
    :ensure t
    )
  (leaf dash
    :ensure t
    )
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

;;;;
;;;; for golang
;;;;

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/")) ; goのインストールパス
(add-to-list 'exec-path (expand-file-name "~/bin/")) ;; go get で入れたツールのパスを通す


(leaf go-mode
  :ensure t
  :bind
  ("M-." . godef-jump)  ; 関数定義にジャンプ
  ("M-*" . pop-tag-mark)  ; ジャンプ元に戻る
  :hook
  (before-save-hook . gofmt-before-save)
  (go-mode-hook . lsp-deferred)
  :custom
  (indent-tabs-mode . nil)
  (tab-width . 4)
  (c-basic-offset . 4)
  )


(el-get-bundle! company-go)


;; copilotの有効化
(add-hook 'go-mode-hook 'copilot-mode)

;; flycheck-modeを有効化してシンタックスエラーを検知
(add-hook 'go-mode-hook 'flycheck-mode)
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
  :hook
  (terraform-mode-hook . terraform-format-on-save-mode)
  (terraform-mode-hook . lsp-deferred)
  )

;; copilotの有効化
(add-hook 'terraform-mode-hook 'copilot-mode)

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
;;;; for ansible
;;;;
(leaf ansible
  :ensure t
  :hook
  (ansible-mode-hook . lsp)
  )
