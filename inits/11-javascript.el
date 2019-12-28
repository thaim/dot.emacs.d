;;;java-script
;; EmacsにおけるJavaScriptは
;; * Emacs 23.2から標準で梱包されるようになった js-mode
;; * 従来人気の高かった js2-mode
;; が選択肢。ここではjs-modeを利用する


;; 書籍: Emacs実践入門に記載のjs-modeインデント設定
(defun js-indent-hook ()
  ;; インデント幅をスペース2つに設定
  (setq js-indent-level 2
        js-expr-indent-offset 2
        indent-tabs-mode nil)
  ;; switch文のcaseラベルをインデントする関数を定義する
  (defun my-js-indent-line ()
         (interactive)
         (let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
                (offset (- (current-column) (current-indentation)))
                (indentation (js--proper-indentation parse-status)))
           (back-to-indentation)
           (if (looking-at "case\\s-")
               (indent-line-to (+ indentation 2))
             (js-indent-line))
           (when (> offset 0) (forward-char offset))))
  ;; caseラベルのインデント処理をセットする
  (set (make-local-variable 'indent-line-function) 'my-js-indent-line)
  )

;; js-modeの起動時にhookを追加
(add-hook 'js-mode-hook 'js-indent-hook)

(add-to-list 'auto-mode-alist
             '("\\.js$" . js-mode))
