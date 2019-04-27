(el-get-bundle! 'groovy-mode)

(autoload 'groovy-mode "groovy-mode"
  "Major mode for editing Groovy files" t)
  (add-to-list 'auto-mode-alist '("\\Jenkinsfile$" . groovy-mode))
