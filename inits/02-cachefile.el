;;;; cache file configuration

;;; eshell
(setq eshell-directory-name (expand-file-name "cache/eshell" user-emacs-directory))

;;; auto-save-list
(setq auto-save-list-file-prefix (expand-file-name "cache/auto-save-list.saves-" user-emacs-directory))

;;; savehist
(setq savehist-file (expand-file-name "cache/history" user-emacs-directory))

;;; url
(setq url-configuration-directory (expand-file-name "cache/url" user-emacs-directory))

;; tramp
(setq tramp-persistency-file-name (expand-file-name "cache/tramp" user-emacs-directory))

;;; howm
(setq howm-keyword-file (expand-file-name "cache/howm/.howm-keys" user-emacs-directory)
      howm-history-file (expand-file-name "cache/howm/.howm-history" user-emacs-directory))

;;; skk
(setq skk-user-directory (expand-file-name "cache/skk" user-emacs-directory))
(setq skk-jisyo (expand-file-name ".skk-jisyo" skk-user-directory))

;;; Network Security Manager
(setq nsm-settings-file (expand-file-name "cache/network-security.data" user-emacs-directory))
