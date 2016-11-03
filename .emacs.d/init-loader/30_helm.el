(global-set-key "\C-x\C-f" 'helm-find-files)
(global-set-key "\M-x" 'helm-M-x)
(global-set-key "\C-x\C-b" 'helm-buffers-list)

(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
