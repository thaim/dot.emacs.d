;; install hunspell with `apt install hunspell` or `brew install hunspell`

; Run M-x ispell for interactive corrections, or ispell-buffer for displaying warnings at all times
(use-package flyspell
  :if (executable-find "hunspell")
  :ensure t
  :custom
  (ispell-program-name "hunspell")
  (ispell-really-hunspell t)
  :config
  (setenv "DICTIONARY" "en_US")
  :hook
  ((markdown-mode howm-mode) . flyspell-mode))

; TODO leafで設定するとispellの実行時にエラーになる
;; (leaf flyspell
;;   :if (executable-find "hunspell")
;;   :ensure t
;;   :init
;;   (setenv "DICTIONARY" "en_US")
;;   :custom
;;   (ispell-program-name "hunspell")
;;   (ispell-really-hunspell t)
;;   :hook
;;   ((markdown-mode howm-mode) . flyspell-mode))
