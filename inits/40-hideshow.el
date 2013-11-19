;;hideshow.el
(require 'hideshow)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'conf-mode-hook       'hs-minor-mode)
(add-hook 'apache-mode-hook     'hs-minor-mode)
