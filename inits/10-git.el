(leaf magit
  :ensure t
  :config
  (setq transient-history-file
      (expand-file-name "cache/transient/history.el" user-emacs-directory)) ;; store history file in cache dir
  :bind
  (("C-x g" . 'magit-status))
  )

(leaf git-modes
  :ensure t
  )
