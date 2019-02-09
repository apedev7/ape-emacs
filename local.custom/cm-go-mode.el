(add-hook 'go-mode-hook
  (lambda ()
    ; Indentation by tab-char, per gofmt
    (setq tab-width 4)
    (setq standard-indent 4)
    (setq indent-tabs-mode t)))
