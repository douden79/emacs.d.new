;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;                     Edit                          ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
; company-anaconda
(eval-after-load "company"
  '(progn
     (add-to-list 'company-backends 'company-anaconda)))
(add-hook 'python-mode-hook 'anaconda-mode)

; python mode handling
(require 'jedi-core)
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

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
