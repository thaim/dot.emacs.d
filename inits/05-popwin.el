(el-get-bundle! popwin)

(setq display-buffer-function 'popwin:display-buffer)
; show popup window in bottom
(setq popwin:popup-window-position 'bottom)

; for auto-async-byte-compile
(push '(" *auto-async-byte-compile*" :position bottom) popwin:special-display-config)

;; for yatex-mode
;; does not work with load yatex mode
;; (require 'popwin-yatex)
;; (push '("*YaTex-typesetting*") popwin:special-display-config)
