;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  japanese-holidays                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(el-get-bundle! japanese-holidays)
(setq calendar-holidays
      (append japanese-holidays holiday-local-holidays holiday-other-holidays))

;; (add-hook 'calendar-load-hook
;; 	  (lambda ()
;; 	    (require 'japanese-holidays)
;; 	    (setq calendar-holidays
;; 		  (append japanese-holidays holiday-local-holidays holiday-other-holidays))))
