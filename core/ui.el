
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;                     UI                             ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; the toolbar is just a waste of valuable screen estate
;; in a tty tool-bar-mode does not properly auto-load, and is

;;;;
;;;; Theme
;;;;

;; solarized-dark
(load-theme 'solarized-dark t)

;;;;
;;;; Cursor
;;;;

;; set cursor color
(set-cursor-color "SkyBlue2")

;;;;
;;;; menu and scroll
;;;;
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;;;
;;;; Line
;;;;
;; Global highlight line
(global-hl-line-mode +1)
(set-face-background 'hl-line "#000094")
(set-face-foreground 'highlight nil)

(provide 'ui)
;;;; ui.el ends here!!!!
