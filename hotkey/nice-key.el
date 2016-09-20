;; neotree
;;(global-set-key "\M-m tr" 'neotree-toggle)
(define-prefix-command 'nice-prefix-map)

(define-key nice-prefix-map (kbd "f t") 'neotree-toggle)
(define-key nice-prefix-map (kbd "t r") 'neotree-refresh)

(global-set-key "\M-m" nice-prefix-map)

