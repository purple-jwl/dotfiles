;; Emacs 23以下は使用不可

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(unless (>= emacs-major-version 24)
  (error "Use Emacs 24 or higher."))

;; el-get
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; el-get-bundle
;; (flycheckはtexinfoのバージョンが古いとエラーになるので注意)
(el-get-bundle auto-complete)
(el-get-bundle color-moccur)
(el-get-bundle exec-path-from-shell)
(el-get-bundle flycheck)
(el-get-bundle flycheck-color-mode-line)
(el-get-bundle flycheck-pos-tip)
(el-get-bundle helm)
(el-get-bundle init-loader)
(el-get-bundle markdown-mode)
(el-get-bundle php-mode)
(el-get-bundle scala-mode)
(el-get-bundle web-mode)
(el-get-bundle yasnippet)
(el-get-bundle yatemplate)

;; init-loader
(custom-set-variables
 '(init-loader-show-log-after-init 'error-only))
(init-loader-load (concat user-emacs-directory "init-loader"))
