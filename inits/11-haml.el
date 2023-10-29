(leaf haml-mode
  :ensure t
  )

(leaf flycheck-haml
  :ensure t
  :hook
  (haml-mode-hook . flymake-haml-load)
  )

