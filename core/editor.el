;;--------------------------------~-----------------------~-------------------------
;;                         Editor's Settings
;;--------------------------------~-----------------------~-------------------------
;;;;
;;;; Encoding
;;;;

;; Coding System Read File encoding.
(modify-coding-system-alist 'file "\\.*\\'" 'utf-8)

;;;;
;;;; Font
;;;;

;; Load korean font setting
(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
                   '("Gulim" . "iso10646-1"))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e)
                   '("Gulim" . "iso10646-1"))

(setq face-font-rescale-alist
       '((".*hiragino.*" . 1.0)
	 (".*Gulim.*" . 1.0)))
(set-language-environment "Korean")

;;;;
;;;; Language
;;;;

;; Python env
; using elpy Deault
(elpy-enable)

; flycheck realtime debugging.
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

; py-autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

; elpy mode hook
(add-hook 'elpy-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width 4)))

; Eldoc
(add-hook 'elpy-mode-hook 'eldoc-mode)

; Syntax checking
;(add-hook 'elpy-mode-hook 'flymake-python-pyflaskes-load)

;;;;
;;;; Syntax
;;;;
;; smartparens
(require 'smartparens-config)
(add-hook 'c-mode-hook #'smartparens-mode)
(add-hook 'python-mode #'smartparens-mode)
(add-hook 'c++-mode-hook #'smartparens-mode)

;;;;
;;;; AutoComplete
;;;;

(ac-config-default)

(provide 'editor)
