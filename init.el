;;load-path
(setq load-path (append
		 '(
		   "~/.emacs.d/elisp"
		   "~/.emacs.d/elisp/org"
		   "~/.emacs.d/elisp/org-contrib"
		   "~/.emacs.d/elisp/yatex1.76"
		   "~/.emacs.d/auto-install"
		   "/media/share/AppData/.emacs.d/elisp"
		   "/media/share/AppData/.emacs.d/auto-install"
		   "/media/share/AppData/.emacs.d/elisp/howm-1.3.9.1"
		   "/media/share/AppData/.emacs.d/elisp/navi2ch"
		   "/media/share/AppData/.emacs.d/elisp/ddskk"
		   "/media/share/AppData/.emacs.d/elisp/apel"
		   "/media/share/AppData/.emacs.d/elisp/yasnippet-0.6.1c"
		   "/media/share/AppData/.emacs.d/elisp/calfw"
		   "/media/share/AppData/.emacs.d/elisp/malabar"
		   "/media/share/AppData/.emacs.d/elisp/twittering-mode"
		   )
		 load-path))


(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")


(require 'server)
(unless (server-running-p)
  (server-start))