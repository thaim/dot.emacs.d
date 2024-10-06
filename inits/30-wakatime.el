(add-to-list 'exec-path (expand-file-name "~/.wakatime")) ; wakatime-cliのインストールパス

(leaf wakatime-mode
  :ensure t
  :when (boundp 'wakatime-api-key)
  )

(global-wakatime-mode)
