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

;; auto completion with company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-dabbrev-downcase 0)
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t))

;; Helm provides a great way to search through menus in Emacs such as the M-x screen
(use-package helm
  :ensure t
  :init
  (require 'helm-config)
  :config
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (helm-mode 1))

;; for git project
(use-package projectile
  :ensure t
  :config
  (projectile-mode))
;; find key binding when you type C-x
(use-package which-key
  :ensure t
  :config
  (which-key-mode))
;; smart quotes parenthese completion
(use-package smartparens
  :ensure t
  :init
  (smartparens-global-mode))

 (setq eshell-history-size         10000
        eshell-buffer-maximum-lines 10000
        eshell-hist-ignoredups t
        eshell-scroll-to-bottom-on-input t)

;; Please don't load outdated byte code
(setq load-prefer-newer t)

;;; The mode line
(line-number-mode)
(column-number-mode)

;;; duplicate line with C-d=Ctrl-d
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-d") 'duplicate-line)


