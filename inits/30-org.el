;;org-mode
(require 'org)
(setq org-modules (append org-modules '(org-odt))) ;ODT機能(開発中)を有効化
(add-hook 'org-mode-hook 'howm)
(add-to-list 'auto-mode-alist '("\\.howm$" . org-mode))
;(setq howm-view-title-header "=")
(setq howm-todo-menu-types "[-+~!]")	;完了済みToDoは非表示
