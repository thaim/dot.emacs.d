;;;; auto-complete
(el-get-bundle! auto-complete
  ;; completion history file path
  (setq ac-comphist-file (expand-file-name "cache/ac-comphist.dat" user-emacs-directory)))
