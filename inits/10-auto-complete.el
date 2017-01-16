;;;; auto-complete
(el-get-bundle! auto-complete
  ;; completion history file path
  (setq ac-comphist-file (expand-file-name "cache/ac-comphist.dat" user-emacs-directory)))

;; enable auto-complete in default specified mode
(require 'auto-complete-config)
(ac-config-default)

;; start complete with specified word length
(setq ac-auto-start 2)

;; show 0.5 second later (default: 0.8)
(setq ac-auto-show-menu 0.5)

;; enable fuzzy matching
(setq ac-use-fuzzy t)
