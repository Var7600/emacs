;;;no strat up message
(setq inhibit-startup-message t)

(scroll-bar-mode -1) ;Disable visible scrollbar
(tooltip-mode -1) ;Disable tooltips
(tool-bar-mode -1);Disable the toolbar

;;Set up the visible bell
(setq visible-bell t)

;; enable line numbers
(global-display-line-numbers-mode 1)

;;change font
(add-to-list 'default-frame-alist
		'(font ."DejaVu Sans Mono-14"))

(load-theme 'tango-dark) ;theme

;;no buffer kill confirmation
(setq confirm-kill-buffer nil)

;;Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa")
			 ("elpa" . "https://elpa.gnu.org./packages/")))

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
  (forward-line 1)
  (yank)
)
(global-set-key (kbd "C-d") 'duplicate-line)


(use-package flycheck
 :ensure t
 :init (global-flycheck-mode))
