;; init file for emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (string= system-type "darwin")       ;; mac系统用command代替alter作为键
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

(add-to-list 'load-path "~/.emacs.d/hotkey")
(require 'basic-key)

(setq package-archives
      '(
        ("popkit" . "https://elpa.popkit.org/packages/")
        ;;("melpa" . "melpa.org/packages/")
        ;;("org"   . "orgmode.org/elpa/")
        ;;("gnu"   . "elpa.gnu.org/packages/")
        ))

(package-initialize)
(require 'doom-themes)
(load-theme 'doom-one t)

;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;; Custom neotree theme
(require 'doom-neotree)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
