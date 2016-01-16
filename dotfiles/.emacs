(custom-set-variables
 ; Remove unnecessary window elements
 '(fringe-mode 0 nil (fringe))
 '(menu-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(scroll-bar-mode nil)
 ; Show filename in title bar
 '(frame-title-format "%b")
 ; Show in-file information
 '(column-number-mode t)
 '(size-indication-mode t)
 ; Show system information
 '(display-battery-mode t)
 '(display-time-mode t)
 ; Set start-up environment to be a blank scratch screen
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message nil)
 '(inhibit-startup-echo-area-message t)
 ; Set column and tab widths
 '(fill-column 79)
 '(default-tab-width 4)
 '(tab-width 4)
 ; Save files with a newline at the end
 '(require-final-newline t)
 ; Disable Emacs droppings
 '(make-backup-files nil)
 '(auto-save-default nil)
 ; Move deleted files to the rubbish/recycle bin
 '(delete-by-moving-to-trash t)
 ; Soft line-wrapping at word boundaries
 '(global-visual-line-mode t)
 ; Use I-Beam cursor
 '(cursor-type 'bar)
 )

; Font (requires Inconsolata font)
(custom-set-faces
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))

; Set up Emacs as an edit server
(server-start)

; Replace all 'yes'/'no' questions with 'y/n'
(defalias 'yes-or-no-p 'y-or-n-p)
