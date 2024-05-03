;; org-ai
(leaf org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode)
  )

;; todoist
(leaf todoist
  :ensure t
  )

