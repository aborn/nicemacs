;; init file for emacs
(when (string= system-type "darwin")       ;; mac系统用command代替alter作为键
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))


(add-to-list 'load-path "~/.emacs.d/hotkey")

(require 'basic-key)
