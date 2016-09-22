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
  (setq mac-command-modifier 'meta)
  (set-face-attribute 'default nil :height 150)  ;; 15号字体
  )

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
(electric-pair-mode 1)                     ;; turn on pair auto complete
(show-paren-mode t)                        ;; display paren match
(global-auto-revert-mode 1)                ;; 当文件被修改后，自动revert内容

;; backup
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)                 ;; use backup mode for save
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; -----------------------------------------------------------------------------
;; 配置主题
(require 'doom-themes)
(load-theme 'doom-one t)
;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)

;; 这个主题里的neotree
;; 这里需要安装https://github.com/domtronn/all-the-icons.el需要的字体才能用 doom-neotree
;;(require 'doom-neotree)

;; 配置mode-line样式为spaceline
(require 'spaceline-config)
;; (spaceline-spacemacs-theme)
(spaceline-emacs-theme)

;; -----------------------------------------------------------------------------
;; company
(add-hook 'after-init-hook 'global-company-mode)

;; -----------------------------------------------------------------------------
;; neotree
(setq neo-toggle-window-keep-p t)
(setq neo-show-hidden-files nil)
(setq neo-show-hidden-files nil)   ;; 不显示隐藏文件
(setq neo-force-change-root t)     ;; 当root改变时，是否强制相应改变而不需要询问
(if window-system
    (setq neo-theme 'icons)
  (setq neo-theme 'arrow))

;; (setq neo-dont-be-alone t)
(require 'nice-helm-config)
(load-file "~/.emacs.d/hotkey/nice-key.el")
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
    (neotree spaceline ace-jump-helm-line ace-jump-mode company doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
