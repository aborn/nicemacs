(require 'helm-config)

(setq helm-net-prefer-curl                            nil
      helm-kill-ring-threshold                        1
      helm-raise-command                              "wmctrl -xa %s"
      helm-scroll-amount                              4
      helm-idle-delay                                 0.01
      helm-input-idle-delay                           0.01
      helm-default-external-file-browser              "thunar"
      helm-pdfgrep-default-read-command               "evince --page-label=%p '%f'"
      helm-ff-auto-update-initial-value               t
      helm-grep-default-command                       "ack-grep -Hn --color --smart-case --no-group %e %p %f"
      helm-grep-default-recurse-command               "ack-grep -H --color --smart-case --no-group %e %p %f"
      helm-reuse-last-window-split-state              t
      helm-always-two-windows                         nil
      helm-split-window-in-side-p                     t
      helm-ls-git-status-command                      'magit-status-internal
      helm-M-x-requires-pattern                       0
      helm-dabbrev-cycle-threshold                    5
      helm-surfraw-duckduckgo-url                     "https://duckduckgo.com/?q=%s&ke=-1&kf=fw&kl=fr-fr&kr=b&k1=-1&k4=-1"
      helm-google-suggest-search-url                  helm-surfraw-duckduckgo-url
      helm-boring-file-regexp-list
      '("\\.git" "\\.hg" "\\.svn" "\\.CVS" "\\._darcs" "\\.la$" "\\.o$" "\\.i$" "\\.steam" "\\undo-tree-history")
      helm-buffer-skip-remote-checking                t
      helm-apropos-fuzzy-match                        t
      helm-M-x-fuzzy-match                            t
      helm-lisp-fuzzy-completion                      t
      helm-completion-in-region-fuzzy-match           t
      helm-buffers-fuzzy-matching                     t
      helm-move-to-line-cycle-in-source               t
      ido-use-virtual-buffers                         t             ; Needed in helm-buffers-list
      helm-tramp-verbose                              6
      helm-locate-command                             "locate %s -e -A --regex %s"
      helm-org-headings-fontify                       t
      helm-autoresize-max-height                      80 ; it is %.
      helm-autoresize-min-height                      20 ; it is %.
      fit-window-to-buffer-horizontally               1
      helm-open-github-closed-issue-since             7
      helm-highlight-matches-around-point-max-lines   30
      helm-search-suggest-action-wikipedia-url
      "https://fr.wikipedia.org/wiki/Special:Search?search=%s"
      helm-wikipedia-suggest-url
      "https://fr.wikipedia.org/w/api.php?action=opensearch&search="
      helm-wikipedia-summary-url
      "https://fr.wikipedia.org/w/api.php?action=parse&format=json&prop=text&section=0&page="
      helm-firefox-show-structure nil
      helm-turn-on-recentf nil
      helm-mini-default-sources '(helm-source-buffers-list helm-source-buffer-not-found)
      helm-debug-root-directory "/home/thierry/tmp/helm-debug"
      helm-follow-mode-persistent t
      )

(provide 'nice-helm-config)
