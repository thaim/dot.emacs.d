;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  japanese-holidays                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'calendar-load-hook
	  (lambda ()
	    (require 'japanese-holidays)
	    (setq calendar-holidays
		  (append japanese-holidays holiday-local-holidays holiday-other-holidays))))
