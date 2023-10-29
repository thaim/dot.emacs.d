;;; yasnippet
(leaf yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs (append yas-snippet-dirs
                                 (list
                                  (locate-user-emacs-file "etc/yasnippets")
                                  (locate-user-emacs-file "etc/yasnippet-snippets/snippets"))))
  (custom-set-variables '(yas-trigger-key "TAB"))
  (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet) ;; 既存スニペットを挿入する
  (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet) ;; 新規スニペットを作成するバッファを用意する
  (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file) ;; 既存スニペットを閲覧・編集する
  (yas-global-mode 1)
  )
