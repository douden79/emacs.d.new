;+--------------------------------~-----------------------~-------------------------+
;|                         Editor's Settings                                        |
;+--------------------------------~-----------------------~-------------------------+
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

;+----------------------------------------
;; Python env
;+----------------------------------------

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

;+----------------------------------------
;; C++
;+----------------------------------------


;+----------------------------------------
;| code navigation and auto complete
;+----------------------------------------
;; auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
; auto complete c header
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include/c++/4.8",
               '"/usr/include/x86_64-linux-gnu/c++/4.8",
               '"/usr/include/c++/4.8/backward",
               '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include",
               '"/usr/local/include",
               '"/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed",
               '"/usr/include/x86_64-linux-gnu",
               '"/usr/include"
               ))

;; ac header default enable
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;+----------------------------------------
;|          Edit
;+----------------------------------------
; iedit global edit
(define-key global-map (kbd "C-c ;") 'iedit-mode)

; Indexing
(require 'helm-config)
(require 'helm-gtags)

;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'php-mode-hook 'helm-gtags-mode)
(add-hook 'python-mode-hook 'helm-gtags-mode)

;+---------------------------
;|     Error
;+---------------------------
;; must install ecb 20140820 version
;ecb error
(setq ecb-examples-bufferinfo-buffer-name nil)
; stack-trace-on-error
(setq stack-trace-on-error t)
(setq ecb-version-check nil)

(provide 'editor)
