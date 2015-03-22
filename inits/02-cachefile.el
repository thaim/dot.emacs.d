;;;; cache file configuration

;;; eshell
(setq eshell-directory-name (expand-file-name "cache/eshell" user-emacs-directory))

;;; auto-save-list
(setq auto-save-list-file-prefix (expand-file-name "cache/auto-save-list.saves-" user-emacs-directory))

;;; savehist
(setq savehist-file (expand-file-name "cache/history" user-emacs-directory))
