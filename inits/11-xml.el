;;;xml psgml-mode
;;(bundle xml-mode)
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)
(add-to-list 'auto-mode-alist '("\\.xml\\'" . xml-mode))
