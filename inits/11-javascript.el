;;;java-script
(el-get-bundle! js2-mode)

;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;;(add-to-list 'auto-mode-alist '("\\.json\\'" . jcript-mode))
;;(autoload 'javascript-mode "javascript" nil t)
(add-hook 'js2-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
