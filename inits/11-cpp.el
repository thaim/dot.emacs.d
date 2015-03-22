;;; common C/C++
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)

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
