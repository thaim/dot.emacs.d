(el-get-bundle magit)

(global-set-key (kbd "C-x g") 'magit-status)
; store history file in cache dir
(setq transient-history-file
      (expand-file-name "cache/transient/history.el" user-emacs-directory))


(el-get-bundle! git-modes)
