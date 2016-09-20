;; init file for emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; -----------------------------------------------------------------------------
;;; init.el
(when (string= system-type "darwin")       ;; mac系统用command代替alter作为键
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

;; -----------------------------------------------------------------------------
;; 加载文件的path
(add-to-list 'load-path "~/.emacs.d/hotkey")
(add-to-list 'load-path "~/.emacs.d/nice")
(load-file "~/.emacs.d/space/funcs.el")

(require 'basic-key)
(require 'move-swift)

;; -----------------------------------------------------------------------------
;; 配置elpa的源
(setq package-archives
      '(
        ("popkit" . "https://elpa.popkit.org/packages/")
        ;;("melpa" . "https://melpa.org/packages/")
        ;;("org"   . "https://orgmode.org/elpa/")
        ;;("gnu"   . "https://elpa.gnu.org/packages/")
        ))

;; -----------------------------------------------------------------------------
;; 一些最基本的配置
(prefer-coding-system 'utf-8)
(tool-bar-mode -1)                         ;; 关闭toobar
(menu-bar-mode -1)                         ;; turn off menu-bar
(toggle-frame-maximized)                   ;; 最大化frame

;; -----------------------------------------------------------------------------
;; 配置主题
(require 'doom-themes)
(load-theme 'doom-one t)
;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;; Custom neotree theme
(require 'doom-neotree)

;;; init.el ends here
;; -----------------------------------------------------------------------------
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ace-jump-helm-line ace-jump-mode company doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
