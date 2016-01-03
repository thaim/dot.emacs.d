;; dockerfile-mode from
;; https://github.com/spotify/dockerfile-mode

(el-get-bundle! dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
