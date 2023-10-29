(leaf adoc-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
)
