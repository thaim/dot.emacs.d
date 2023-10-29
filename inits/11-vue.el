(leaf vue-mode
  :ensure t
  :after flycheck add-ndoe-modules-path
  :config
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  (flycheck-add-mode 'javascript-eslint 'vue-mode)
  :hook
  (vue-mode-hook . flycheck-mode)
  (vue-mode-hook . add-node-modulespath)
  )

(leaf vue-html-mode
  :ensure t
  :after flycheck
  :config
  (flycheck-add-mode 'javascript-eslint 'vue-html-mode)
  )

(leaf mmm-mode
  :ensure t)

(leaf ssass-mode
  :ensure t)

(leaf edit-indirect
  :ensure t)

(leaf add-node-modules-path
  :ensure t)


;; flycheck config
(flycheck-add-mode 'javascript-eslint 'css-mode)
