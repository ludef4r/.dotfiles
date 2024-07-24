;;; Appearance
(load-theme 'wombat t)
(set-face-attribute 'default nil :background "transparent")
(tool-bar-mode -1)

;;; File naming completion
(setq completion-ignore-case t)

;;; Initialize package sources
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; Ensure SLY is installed
(unless (package-installed-p 'sly)
  (package-refresh-contents)
  (package-install 'sly))

;;; Load SLY and set Lisp implementation
(require 'sly)
(setq inferior-lisp-program "/usr/bin/sbcl")

;; Install undo-fu if not already installed
(unless (package-installed-p 'undo-fu)
  (package-refresh-contents)
  (package-install 'undo-fu))

;; Load undo-fu
(require 'undo-fu)

;;; Globals
(global-display-line-numbers-mode 1)
(global-company-mode 1)

;;; Custom Functions
(defun sly-compile-file-buffer()
  "Compiles the current Lisp file using SLY"
  (interactive)
  (sly-compile-file (buffer-file-name)))

(defun start-sly-on-emacs-startup ()
  "Start SLY when Emacs starts."
  (when (not (featurep 'sly))
    (require 'sly))
  (sly))

(defun setup-sly-repl-keybindings ()
  "Set up keybindings for SLY REPL mode."
  (define-key sly-repl-mode-map (kbd "<up>") 'sly-repl-previous-input)
  (define-key sly-repl-mode-map (kbd "<down>") 'sly-repl-next-input))

;;; Unbind default keybindings to avoid conflicts
(global-unset-key (kbd "C-a"))  
(global-unset-key (kbd "<down>"))     
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "C-j"))
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-h"))
(global-unset-key (kbd "C-l"))
(global-unset-key (kbd "C-u"))
(global-unset-key (kbd "C-r"))

;;; Define prefixes
(define-prefix-command 'my-custom-prefix)
(global-set-key (kbd "C-a") 'my-custom-prefix)

;; SLY custom keybindings
(add-hook 'sly-repl-mode-hook 'setup-sly-repl-keybindings)

;;; Open SLY on startup
(add-hook 'emacs-startup-hook 'start-sly-on-emacs-startup)

;;; Keybindings

;; Compilation
(global-set-key (kbd "C-a C-c") 'sly-compile-file-buffer)

;; Movement
(global-set-key (kbd "C-j") 'next-line)
(global-set-key (kbd "C-k") 'previous-line)
(global-set-key (kbd "C-h") 'left-char)
(global-set-key (kbd "C-l") 'right-char)

;; Undo/Redo
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-r") 'undo-fu-redo)

;; xD
(global-set-key (kbd "<left>") (lambda () (interactive) (message "Go back to windows notepad")))
(global-set-key (kbd "<right>") (lambda () (interactive) (message "Foot pic")))
(global-set-key (kbd "<up>") (lambda () (interactive) (message "Cringe")))
(global-set-key (kbd "<down>") (lambda () (interactive) (message "Vim is better!!!!!!!!!!!!!!!!!")))
