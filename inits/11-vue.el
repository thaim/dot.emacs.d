(el-get-bundle! 'vue-mode)

(el-get-bundle! 'vue-html-mode)
(el-get-bundle! 'mmm-mode)
(el-get-bundle! 'ssass-mode)

(el-get-bundle! 'edit-indirect)
(el-get-bundle! 'add-node-modules-path)

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(eval-after-load 'vue-mode
  '(add-hook 'vue-mode-hook #'add-node-modules-path))

;; flycheck config
(flycheck-add-mode 'javascript-eslint 'vue-mode)
(flycheck-add-mode 'javascript-eslint 'vue-html-mode)
(flycheck-add-mode 'javascript-eslint 'css-mode)
(add-hook 'vue-mode-hook 'flycheck-mode)
