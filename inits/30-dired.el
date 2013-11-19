;;diredのモードフック
(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            (global-set-key "\C-x\C-j" 'skk-mode) ;dired-jumpではなくskkを利用
            ))
