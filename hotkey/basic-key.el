;; (global-set-key "\C-o" 'other-window)
(global-set-key "\M-j" 'find-file)
(global-set-key "\C-j" 'switch-to-buffer)
(global-set-key "\C-o" 'other-window)

(global-set-key (kbd "C-a") 'spacemacs/smart-move-beginning-of-line)
;; (global-set-key (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
(global-set-key [C-backspace] 'spacemacs/backward-kill-word-or-region)

(global-set-key (kbd "C-'") 'nice/move-middle-of-line)
(global-set-key (kbd "C-;") 'nice/move-forward-by-five)
(global-set-key (kbd "C-:") 'nice/move-backward-by-five)

;; helm 相关
(global-set-key (kbd "C-j") 'helm-buffers-list)
(global-set-key (kbd "M-j") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; ace-jump releated
(global-set-key (kbd "M-n") 'ace-jump-mode)
(eval-after-load "helm"
  '(define-key helm-map (kbd "M-n") 'ace-jump-helm-line))

(provide 'basic-key)
