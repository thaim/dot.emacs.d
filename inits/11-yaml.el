(el-get-bundle! yaml-mode)

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; インデントをハイライトする
(el-get-bundle antonj/Highlight-Indentation-for-Emacs)
(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")

(add-hook 'yaml-mode-hook 'highlight-indentation-mode)
