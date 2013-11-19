;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; small-hacks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; split window in 3
(require 'multi-split)

;; time stamp
(defun my-insert-date () (interactive)
  (insert (concat "" (format-time-string "%Y-%m-%d"))))
(defun my-insert-time () (interactive)
    (insert (concat "" (format-time-string "%H-%M-%S"))))
