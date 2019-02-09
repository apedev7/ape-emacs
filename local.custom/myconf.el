;
; GUI vs TTY config
(load (if (display-graphic-p) "config-gui.el" "config-tty.el") t t t)
;
; Set up for C-scope
(load "config-cscope.el" t t t)
;
; Set up per http://www.kernel.org/doc/Documentation/CodingStyle
(load "cm-c-mode-linux.el" t t t)
;
; Set up coding modes
(load "cm-c-mode.el" t t t)
(load "cm-js-mode.el" t t t)
(load "cm-go-mode.el" t t t)
(load "cm-sh-mode.el" t t t)

