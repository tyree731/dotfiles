;; I never use the menu-bar or the tool-bar
(menu-bar-mode nil)
(tool-bar-mode nil)

(setq mac-command-key-is-meta nil)

(when (eq system-type 'darwin)
  (setq mac-right-option-modifier 'none))

;; add MELPA to emacs package list
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; color-theme-modern -> dark-laptop
(load-theme `dark-laptop t t)
(enable-theme `dark-laptop)

;; I *never* want to make everything uppercase
(global-unset-key "\C-x\C-u")

;; Changes emacs to scroll smoothly
(set-variable 'scroll-conservatively 5)

;; Changes switch statement indenting
(c-set-offset 'case-label '+)

;; Tabs are spaces, period.
(setq indent-tabs-mode nil) 

;; "Tabs" use 2 spaces for indentation
(setq c-basic-offset 2)

;; No more startup screen
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "styree")

;; Time and Date
(setq display-time-day-and-date t)
(display-time)

;; Put emacs backup files in a common location
(defvar backup-dir "~/backup/emacs_backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))

;; Makes shell command easy to get to
(global-set-key [f1] 'shell)

;; Make shell use colors
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Copy, cut and paste
(global-set-key [f5] 'copy-region-as-kill) ; Copy
(global-set-key [f6] 'kill-region)         ; Cut
(global-set-key [f7] 'yank)                ; Paste 
