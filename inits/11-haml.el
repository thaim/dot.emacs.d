(el-get-bundle! haml-mode)
(el-get-bundle! flymake-haml)

(add-hook 'haml-mode-hook 'flymake-haml-load)
