;; I never use the menu-bar or the tool-bar
(menu-bar-mode nil)
(tool-bar-mode nil)

;; I *never* want to make everything uppercase
(global-unset-key "\C-x\C-u")

;; Changes emacs to scroll smoothly
(set-variable 'scroll-conservatively 5)

;; Defines dark_theme using package color-theme
(defun dark_theme ()
  (interactive)
  (color-theme-install
   '(dark_theme
      ((background-color . "#101e2e")
      (background-mode . light)
      (border-color . "#1a1a1a")
      (cursor-color . "#fce94f")
      (foreground-color . "#eeeeec")
      (mouse-color . "black"))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#0d4519"))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-function-name-face ((t (:foreground "#edd400"))))
     (font-lock-keyword-face ((t (:foreground "#729fcf"))))
     (font-lock-string-face ((t (:foreground "#ad7fa8"))))
     (font-lock-type-face ((t (:foreground"#8ae234"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'dark_theme)
(require 'color-theme)
(color-theme-initialize)
(dark_theme)

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

;; Make up and down work in shell mode
(add-hook 'shell-mode-hook
    '(lambda ()
       (define-key shell-mode-map [up] 'comint-previous-input)
       (define-key shell-mode-map [down] 'comint-next-input)
     )
)

;; Copy, cut and paste
(global-set-key [f5] 'copy-region-as-kill) ; Copy
(global-set-key [f6] 'kill-region)         ; Cut
(global-set-key [f7] 'yank)                ; Paste 

;; Windmove, facilitates simple moving between windows (S-UP, S-LEFT, etc.)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
