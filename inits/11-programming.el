;;programming
;;yasnippet
(require 'yasnippet-bundle)
;; (require 'yasnippet) ;; not yasnippet-bundle
;; (yas/initialize)
;; (yas/load-directory "/media/share/AppData/.emacs.d/elisp/yasnippet-0.6.1c/snippets")

;;php
(load-library "php-mode")
(require 'php-mode)

;;;java-script
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)

;;;xml psgml-mode
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)
(add-to-list 'auto-mode-alist '("\\.xml\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.rdf\\'" . xml-mode))

;;;mmm-mode
;(require 'mmm-mode)
;(setq mmm-global-mode 'maybe)
;;(mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;(mmm-add-classes
; '((html-php
;    :submode php-mode
;    :front "<\\?\\(php\\)?"
;    :back "\\?>")))
;(add-to-list 'auto-mode-alist '("\\.php?\\'" . xml-mode))

;;;python
;;python.el
;; (require 'python-mode)
;; (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;; (setq interpreter-mode-alist (cons '("python" . python-mode)
;; interpreter-mode-alist))
;; (autoload 'python-mode "python-mode" "Python editing mode." t)
;;pymacs
;;(autoload 'pymacs-apply "pymacs")
;;(autoload 'pymacs-call "pymacs")
;;(autoload 'pymacs-eval "pymacs" nil t)
;;(autoload 'pymacs-exec "pymacs" nil t)
;;(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs")

;;octave
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))

(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "gnu")
	     (setq c-basic-offset 4)
	     (indent-tabs-mode nil)
	     (setq tab-width 4)
	     ))

(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "gnu")
	     (indent-tabs-mode nil)
	     (setq c-basic-offset 4)
	     ))


;;;;info設定
(require 'info)
(add-to-list 'Info-additional-directory-list
	     "/usr/local/share/info"
	     "/usr/share/info"
	     "/usr/local/info"
	     )

;; (setq Info-default-directory-list
;;       (append
;;        '(
;; 	 "/media/share/AppData/.emacs.d/info"
;; 	 "/usr/local/share/info"
;; 	 )
;;        Info-default-directory-list))
