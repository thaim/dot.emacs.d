;; org-ai
; require org-ai-openai-token for API key

(leaf org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode)
  )


;; todoist
; require todoist-token for API key
(leaf todoist
  :ensure t
  )

