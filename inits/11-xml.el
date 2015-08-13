;;;xml psgml-mode
;;(bundle xml-mode)
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)
(add-to-list 'auto-mode-alist '("\\.xml\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.xml\\'" . sgml-mode))

;;; xml folding
(add-hook 'sgml-mode-hook
          '(lambda()
             (hs-minor-mode 1)))
(add-to-list 'hs-special-modes-alist
             '(sgml-mode
               "<!--\\|<[^/>]>\\|<[^/][^>]*[^/]>"
               ""
               "<!--"
               sgml-skip-tag-forward
               nil))

;; key bind
(define-key sgml-mode-map (kbd "C-c C-o") 'hs-toggle-hiding)
(define-key sgml-mode-map (kbd "C-c C-l") 'hs-hide-level)
(define-key sgml-mode-map (kbd "C-c C-s") 'hs-show-all)
