;;no strat up message
(setq inhibit-startup-message t)

(scroll-bar-mode -1) ;Disable visible scrollbar
(tooltip-mode -1) ;Disable tooltips
(tool-bar-mode -1);Disable the toolbar

;;Set up the visible bell
(setq visible-bell t)

;;change font
(add-to-list 'default-frame-alist
		'(font ."DejaVu Sans Mono-14"))

(load-theme 'tango-dark) ;theme

;;Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa")
			 ("elpa" . "https://elpa.gnu.org./packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 (setq eshell-history-size         10000
        eshell-buffer-maximum-lines 10000
        eshell-hist-ignoredups t
        eshell-scroll-to-bottom-on-input t)




