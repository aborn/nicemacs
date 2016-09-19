(global-set-key "\C-o" 'other-window)
(global-set-key "\M-j" 'find-file)
(global-set-key "\C-j" 'switch-to-buffer)

(global-set-key (kbd "C-a") 'spacemacs/smart-move-beginning-of-line)
;; (global-set-key (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
(global-set-key [C-backspace] 'spacemacs/backward-kill-word-or-region)

(global-set-key (kbd "C-'") 'nice/move-middle-of-line)
(global-set-key (kbd "C-;") 'nice/move-forward-by-five)
(global-set-key (kbd "C-:") 'nice/move-backward-by-five)

(provide 'basic-key)
