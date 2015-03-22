;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  calfw                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bundle calfw)
(require 'calfw)
(cfw:open-calendar-buffer)
(setq calendar-week-start-day 0) 	;週は日曜日から開始

(require 'calfw-org)
(require 'calfw-ical)
(require 'calfw-howm)
(cfw:install-howm-schedules)
;;(cfw:install-ical-schedules)

(defun open-my-calendar ()
  (interactive)
  (cfw:open-calendar-buffer
   :view 'month
   :contents-sources
   (list
    (cfw:howm-create-source "blue")
    (cfw:org-create-source "Seagreen4")
    (cfw:ical-create-source "my gcal" "http://www.google.com/calendar/ical/rysugar%40gmail.com/private-18afd98ae139609f791d1418e01f1646/basic.ics" "green")
    (cfw:ical-create-source "TopCoder部" "http://topcoder.g.hatena.ne.jp/calendar?mode=ical" "orange")
    )
   )
  )


;;calfw-gcal
(bundle calfw-gcal)
(define-key cfw:calendar-mode-map (kbd "a") 'cfw:gcal-main)

;;calfw-howm
;; howm内にcalfwの表示
;; (eval-after-load "howm-menu"
;;   '(progn
;;      (require 'calfw-howm)
;;      (cfw:install-howm-schedules)
;;      (define-key howm-mode-map (kbd "M-C") 'cfw:open-howm-calendar)
;;      )
;;   )
