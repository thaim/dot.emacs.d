;;;;
;;;; for golang
;;;;

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/")) ; goのインストールパス
(add-to-list 'exec-path (expand-file-name "~/bin/")) ;; go get で入れたツールのパスを通す


(leaf go-mode
  :ensure t
  :bind
  ("M-." . godef-jump)
  :hook
  (before-save-hook . gofmt-before-save)
  :custom
  (indent-tabs-mode . nil)
  (tab-width . 4)
  (c-basic-offset . 4)
  )


(el-get-bundle! company-go)

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
