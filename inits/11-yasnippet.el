;;; yasnippet
(el-get-bundle! yasnippet)

(add-to-list 'yas-snippet-dirs (locate-user-emacs-file "etc/yasnippets"))
(add-to-list 'yas-snippet-dirs (locate-user-emacs-file "etc/yasnippet-snippets/snippets"))


(custom-set-variables '(yas-trigger-key "TAB"))
;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

(yas-global-mode 1)
