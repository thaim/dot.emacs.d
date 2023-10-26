;; dockerfile-mode from
;; https://github.com/spotify/dockerfile-mode

(leaf dockerfile-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
  )
