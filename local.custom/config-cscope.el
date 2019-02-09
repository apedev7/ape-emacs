;
; Set up for C-scope
(require 'xcscope)
(setq cscope-initial-directory (concat (getenv "PWD") "/Cscope.gen"))
(custom-set-variables '(cscope-option-do-not-update-database t))
(add-hook 'asm-mode-hook 'cscope-minor-mode)
(add-hook 'perl-mode-hook 'cscope-minor-mode)
(add-hook 'makefile-mode-hook 'cscope-minor-mode)
(add-hook 'GNUmakefile-mode-hook 'cscope-minor-mode)
(add-hook 'python-mode-hook 'cscope-minor-mode)
(add-hook 'sh-mode-hook 'cscope-minor-mode)
(add-hook 'text-mode-hook 'cscope-minor-mode)
(add-hook 'go-mode-hook 'cscope-minor-mode)
