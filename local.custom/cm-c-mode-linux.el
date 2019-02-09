;
; Set up per http://www.kernel.org/doc/Documentation/CodingStyle
(defun linux-c-mode ()
 (c-mode))
(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(defun is-linux-source ()
        (let ((filename (buffer-file-name)))
           (and filename
                (string-match "\\(^.+?/linux/\\)" filename)
                (file-directory-p (concat (match-data 0) ".git")))))

(defun set-linux-c-mode ()
        (setq indent-tabs-mode t)
        (c-set-style "linux-tabs-only"))

(defun set-linux-c-mode-if ()
        (if (or (getenv "LINUX_FORCED") (is-linux-source))
            (set-linux-c-mode)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook (lambda () (set-linux-c-mode-if)))

