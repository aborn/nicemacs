
(defun nice/move-middle-of-line (arg)
  "Move point to the middle of line current displayed" 
  (interactive "p")
  (message "move to middle of line, cur=%d." (current-column))
  (end-of-line)
  (backward-char (/ (current-column) 2)))

(defun nice/move-forward-by-five (arg)
  "Move point forward by five lines"
  (interactive "p")
  (forward-line 5))

(defun nice/move-backward-by-five (arg)
  "Move point backward by five lines"
  (interactive "p")
  (forward-line -5))

(provide 'move-swift)
