(leaf groovy-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\Jenkinsfile$" . groovy-mode))
  )
