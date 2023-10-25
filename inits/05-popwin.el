(leaf popwin
  :ensure t
  :config
  (setq pop-up-windows nil)
  (setq anything-samewindow nil)
  (setq popwin:popup-window-position 'bottom) ;; show popup window in bottom
  (popwin-mode 1)
  )
