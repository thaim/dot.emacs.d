(leaf haml-mode
  :ensure t
  :after flycheck
  :hook
  (haml-mode-hook . flymake-haml-load)
  )
