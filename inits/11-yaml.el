(leaf yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

  ;; インデントをハイライトする
  (leaf highlight-indentation
    :ensure t
    :config
    (set-face-background 'highlight-indentation-face "#e3e3d3")
    (set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
    :hook
    (yaml-mode-hook . highlight-indentation-mode)
    )
  )
