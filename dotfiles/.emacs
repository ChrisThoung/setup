(custom-set-variables
 '(auto-save-default nil)
 '(column-number-mode t)
 '(cursor-type (quote bar))
 '(default-tab-width 4 t)
 '(delete-by-moving-to-trash t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fill-column 79)
 '(frame-title-format "%b" t)
 '(fringe-mode 0 nil (fringe))
 '(global-visual-line-mode t)
 '(inhibit-startup-echo-area-message t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

;; Font (requires Inconsolata font)
(custom-set-faces
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))

;; Set up Emacs as an edit server
(server-start)

;; Replace all 'yes'/'no' questions with 'y/n'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Enable change-case macros
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Raise large-file warning threshold to something greater than Emacs' (rather
;; conservative) default: 100MB, rather than 10MB
(setq large-file-warning-threshold 100000000)

;; Turn off all alarms
(setq ring-bell-function 'ignore)

;; Add stable packages version of Melpa repository
(require 'package)
(add-to-list 'package-archives
			 '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Set colour theme to Solarized Dark
;; (setq package-enable-at-startup nil)
(package-initialize)
(load-theme 'solarized-dark)
